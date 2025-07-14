// Map state class
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapState {
  final Set<Marker> markers;
  final Set<Polyline> polylines;
  final LatLng? currentPosition;
  final LatLng destination;
  final bool isLoading;
  final String duration;
  final String distance;
  final String? error;

  const MapState({
    this.markers = const {},
    this.polylines = const {},
    this.currentPosition,
    this.destination = const LatLng(0, 0),
    this.isLoading = true,
    this.duration = '',
    this.distance = '',
    this.error,
  });

  MapState copyWith({
    Set<Marker>? markers,
    Set<Polyline>? polylines,
    LatLng? currentPosition,
    LatLng? destination,
    bool? isLoading,
    String? duration,
    String? distance,
    String? error,
    bool clearError = false,
  }) {
    return MapState(
      markers: markers ?? this.markers,
      polylines: polylines ?? this.polylines,
      currentPosition: currentPosition ?? this.currentPosition,
      destination: destination ?? this.destination,
      isLoading: isLoading ?? this.isLoading,
      duration: duration ?? this.duration,
      distance: distance ?? this.distance,
      error: clearError ? null : (error ?? this.error),
    );
  }
}
