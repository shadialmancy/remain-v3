// ignore_for_file: avoid_public_notifier_properties
import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/models/map_model.dart';

part 'map_provider.g.dart';

@Riverpod(
  keepAlive: true,
)
class MapService extends _$MapService {
  static const String _apiKey = 'AIzaSyAVNt5ddUuAadf729abxgbpIu3iXwpn4Gc';

  @override
  FutureOr<MapState> build() {
    return const MapState();
  }

  MapState _currentState = const MapState();

  MapState getCurrentState() => _currentState;

  void initializeMap(double destinationLat, double destinationLng) {
    final destination = LatLng(
      destinationLat,
      destinationLng,
    );

    _currentState = _currentState.copyWith(
      destination: destination,
      isLoading: true,
      clearError: true,
    );
    state = AsyncData(_currentState);
    getCurrentLocation();
  }

  Future<void> getCurrentLocation() async {
    try {
      LocationPermission permission = await Geolocator.checkPermission();
      // Always try to request permission if it's not already granted
      if (permission == LocationPermission.denied ||
          permission == LocationPermission.deniedForever) {
        permission = await Geolocator.requestPermission();
      }

      if (permission == LocationPermission.deniedForever) {
        _currentState = _currentState.copyWith(
          isLoading: false,
          error: 'SETTINGS_REQUIRED',
        );
        state = AsyncData(_currentState);
        return;
      }

      if (permission == LocationPermission.denied) {
        _currentState = _currentState.copyWith(
          isLoading: false,
          error: 'LOCATION_PERMISSION_REQUIRED',
        );
        state = AsyncData(_currentState);
        return;
      }

      Position position = await Geolocator.getCurrentPosition();

      final currentPos = LatLng(position.latitude, position.longitude);

      _currentState = _currentState.copyWith(
        currentPosition: currentPos,
        isLoading: false,
        clearError: true,
      );
      state = AsyncData(_currentState);

      setMarkers();
      getDirections();
    } catch (e) {
      if (kDebugMode) {
        print('Error getting location: $e');
      }
      _currentState = _currentState.copyWith(
        isLoading: false,
        error: 'Unable to get current location. Please try again.',
      );
      state = AsyncData(_currentState);
    }
  }

  void setMarkers() {
    final markers = <Marker>{};

    markers.add(
      Marker(
        markerId: const MarkerId('destination'),
        position: _currentState.destination,
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      ),
    );

    _currentState = _currentState.copyWith(markers: markers);
    state = AsyncData(_currentState);
  }

  Future<void> getDirections() async {
    if (_currentState.currentPosition == null) return;
    final String url = 'https://maps.googleapis.com/maps/api/directions/json?'
        'origin=${_currentState.currentPosition!.latitude},${_currentState.currentPosition!.longitude}&'
        'destination=${_currentState.destination.latitude},${_currentState.destination.longitude}&'
        'key=$_apiKey';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        if (data['status'] == 'OK' && data['routes'].isNotEmpty) {
          final route = data['routes'][0];
          final leg = route['legs'][0];

          _currentState = _currentState.copyWith(
              duration: leg['duration']['text'],
              distance: leg['distance']['text'],
              clearError: true);
          state = AsyncData(_currentState);

          createPolyline(route['overview_polyline']['points']);
        } else {
          showDirectionsError(data['status'] ?? 'UNKNOWN_ERROR');
        }
      } else {
        showDirectionsError('NETWORK_ERROR');
      }
    } catch (e) {
      showDirectionsError('REQUEST_ERROR');
    }
  }

  // Create polyline for route
  void createPolyline(String encodedPoints) {
    List<LatLng> polylineCoordinates = decodePolyline(encodedPoints);

    final polylines = <Polyline>{
      Polyline(
        polylineId: const PolylineId('route'),
        points: polylineCoordinates,
        color: const Color(0xFF4A90E2), // Blue color
        width: 5,
        patterns: [],
      ),
    };

    _currentState = _currentState.copyWith(polylines: polylines);
    state = AsyncData(_currentState);
  }

  // Calculate camera position for route
  CameraUpdate calculateCameraUpdate() {
    if (_currentState.currentPosition == null) {
      return CameraUpdate.newLatLngZoom(_currentState.destination, 12.0);
    }

    double latDiff = (_currentState.currentPosition!.latitude -
            _currentState.destination.latitude)
        .abs();
    double lngDiff = (_currentState.currentPosition!.longitude -
            _currentState.destination.longitude)
        .abs();
    double maxDiff = latDiff > lngDiff ? latDiff : lngDiff;

    // Calculate center point
    double centerLat = (_currentState.currentPosition!.latitude +
            _currentState.destination.latitude) /
        2;
    double centerLng = (_currentState.currentPosition!.longitude +
            _currentState.destination.longitude) /
        2;
    LatLng center = LatLng(centerLat, centerLng);

    // Calculate zoom based on distance
    double zoom;
    if (maxDiff > 100.0) {
      zoom = 3.0;
    } else if (maxDiff > 10.0) {
      zoom = 5.0;
    } else if (maxDiff > 5.0) {
      zoom = 6.0;
    } else if (maxDiff > 1.0) {
      zoom = 8.0;
    } else if (maxDiff > 0.5) {
      zoom = 10.0;
    } else if (maxDiff > 0.1) {
      zoom = 12.0;
    } else if (maxDiff > 0.01) {
      zoom = 14.0;
    } else {
      zoom = 15.0;
    }

    return CameraUpdate.newLatLngZoom(center, zoom);
  }

  // Show directions error
  void showDirectionsError(String errorType) {
    String message = 'Unable to get directions. ';
    switch (errorType) {
      case 'ZERO_RESULTS':
        message += 'No route found between the locations.';
        break;
      case 'OVER_QUERY_LIMIT':
        message += 'Too many requests. Please try again later.';
        break;
      case 'REQUEST_DENIED':
        message += 'Request denied. Check API key permissions.';
        break;
      default:
        message += 'Please try again.';
    }

    _currentState = _currentState.copyWith(error: message);
    state = AsyncData(_currentState);
  }

  // Clear error
  void clearError() {
    _currentState = _currentState.copyWith(clearError: true);
    state = AsyncData(_currentState);
  }

  // Retry getting location - clears error and tries again
  void retryLocation() {
    _currentState = _currentState.copyWith(
      isLoading: true,
      clearError: true,
    );
    state = AsyncData(_currentState);
    getCurrentLocation();
  }

  // Open app settings for location permission
  Future<void> openAppSettings() async {
    try {
      await Geolocator.openAppSettings();
    } catch (e) {
      if (kDebugMode) {
        print('Error opening app settings: $e');
      }
    }
  }

  // Check location permission status (useful when returning from settings)
  Future<void> checkLocationPermission() async {
    getCurrentLocation();
  }

  // Decode polyline helper method
  List<LatLng> decodePolyline(String encoded) {
    List<LatLng> polylineCoordinates = [];
    int index = 0;
    int len = encoded.length;
    int lat = 0;
    int lng = 0;

    while (index < len) {
      int b;
      int shift = 0;
      int result = 0;
      do {
        b = encoded.codeUnitAt(index++) - 63;
        result |= (b & 0x1f) << shift;
        shift += 5;
      } while (b >= 0x20);
      int dlat = ((result & 1) != 0 ? ~(result >> 1) : (result >> 1));
      lat += dlat;

      shift = 0;
      result = 0;
      do {
        b = encoded.codeUnitAt(index++) - 63;
        result |= (b & 0x1f) << shift;
        shift += 5;
      } while (b >= 0x20);
      int dlng = ((result & 1) != 0 ? ~(result >> 1) : (result >> 1));
      lng += dlng;

      polylineCoordinates.add(LatLng(lat / 1E5, lng / 1E5));
    }
    return polylineCoordinates;
  }
}
