import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../data/models/map_location_dto/location_data.dart';
import '../provider/map_provider.dart';

class MapDirectionUi extends ConsumerStatefulWidget {
  final LocationData? locationData;

  const MapDirectionUi({
    super.key,
    required this.locationData,
  });

  @override
  ConsumerState<MapDirectionUi> createState() => _MapDirectionUiState();
}

class _MapDirectionUiState extends ConsumerState<MapDirectionUi>
    with WidgetsBindingObserver {
  final Completer<GoogleMapController> _controller = Completer();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(mapServiceProvider.notifier).initializeMap(
            double.parse(widget.locationData?.maplat ?? '0'),
            double.parse(widget.locationData?.maplong ?? '0'),
          );
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    if (_controller.isCompleted) {
      _controller.future.then((controller) => controller.dispose());
    }
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    // When app comes back to foreground, check location permission if there was an error
    if (state == AppLifecycleState.resumed) {
      final currentState =
          ref.read(mapServiceProvider.notifier).getCurrentState();
      if (currentState.error != null) {
        // Wait a bit for the app to fully resume, then check permission
        Future.delayed(const Duration(milliseconds: 500), () {
          if (mounted) {
            ref.read(mapServiceProvider.notifier).checkLocationPermission();
          }
        });
      }
    }
  }

  Future<void> _animateToRoute() async {
    try {
      if (!mounted) return;

      final mapService = ref.read(mapServiceProvider.notifier);
      if (!_controller.isCompleted) return;

      final controller = await _controller.future;
      if (!mounted) return;

      final cameraUpdate = mapService.calculateCameraUpdate();
      await controller.animateCamera(cameraUpdate);
    } catch (e) {
      // Silently handle camera animation errors
      // This prevents crashes when the map is disposed or not ready
    }
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return AsyncValueWidget(
      value: ref.watch(mapServiceProvider),
      data: (mapState) {
        // Show error message if there's an error
        if (mapState.error != null) {
          return Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    mapState.error == 'SETTINGS_REQUIRED'
                        ? Icons.settings_outlined
                        : Icons.location_disabled,
                    size: 64,
                    color: theme.primary,
                  ),
                  SizedBox(height: 16),
                  Text(
                    mapState.error == 'SETTINGS_REQUIRED'
                        ? l10n.locationPermissionIsRequiredToShowDirections
                        : mapState.error!,
                    textAlign: TextAlign.center,
                    style: theme.bodyLarge.copyWith(
                      color: theme.dark2E,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 16),
                  // Show different button based on error type
                  if (mapState.error == 'SETTINGS_REQUIRED')
                    PrimaryButton(
                      title: l10n.goToSettings,
                      onPressed: () {
                        ref.read(mapServiceProvider.notifier).openAppSettings();
                      },
                    )
                  else
                    PrimaryButton(
                      title: l10n.tryAgain,
                      onPressed: () {
                        ref.read(mapServiceProvider.notifier).retryLocation();
                      },
                    ),
                ],
              ),
            ),
          );
        }

        // Show loading indicator until current location is available
        if (mapState.isLoading || mapState.currentPosition == null) {
          return const Center(child: CircularProgressIndicator());
        }

        if (mapState.polylines.isNotEmpty) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (mounted) {
              _animateToRoute();
            }
          });
        }

        return Stack(
          children: [
            GoogleMap(
              onMapCreated: (GoogleMapController controller) {
                if (!_controller.isCompleted) {
                  _controller.complete(controller);
                }
              },
              initialCameraPosition: CameraPosition(
                target: mapState.currentPosition!,
                zoom: 12.0,
              ),
              markers: mapState.markers,
              polylines: mapState.polylines,
              myLocationEnabled: true,
              myLocationButtonEnabled: false,
              zoomControlsEnabled: false,
              mapToolbarEnabled: false,
              trafficEnabled: false,
              buildingsEnabled: false,
              compassEnabled: false,
            ),
            Positioned(
              bottom: 16,
              left: 16,
              right: 16,
              child: Container(
                height: 50.sw,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 36.sw,
                        margin: EdgeInsets.only(bottom: 1.sh),
                        padding: EdgeInsets.all(4.sw),
                        decoration: BoxDecoration(
                          color: theme.white,
                          borderRadius: AppSizes.borderRadius16,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(AssetsHelper.locationMarkIcon),
                                gapW8,
                                Expanded(
                                  child: Text(
                                    widget.locationData?.locationAddress ?? '',
                                    style: theme.bodyMedium.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: theme.dark2E,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(AssetsHelper.phoneMarkIcon),
                                gapW8,
                                Text(
                                  widget.locationData?.phoneNum ?? '',
                                  style: theme.bodyMedium.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: theme.dark2E,
                                  ),
                                  textDirection: TextDirection.ltr,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 16.sw,
                        height: 16.sw,
                        decoration: BoxDecoration(
                          color: theme.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.25),
                              blurRadius: 4.5,
                              offset: const Offset(0, 2.25),
                            ),
                          ],
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            AssetsHelper.remainLogoBlue,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
