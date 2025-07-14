import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remain/src/core/constants/constants.dart';
import 'package:remain/src/core/themes/themes.dart';
import 'package:remain/src/core/widgets/async_value_widget.dart';
import 'package:remain/src/features/home/providers/home_services_prov.dart';
import 'package:remain/src/features/home/providers/home_user_vitals_service.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../../core/helpers/assets_helper.dart';
import '../../../core/localization/localizations.dart';
import '../data/models/home_services/services_datum.dart';

class UserVitalsWidget extends ConsumerStatefulWidget {
  const UserVitalsWidget({
    super.key,
  });

  @override
  ConsumerState<UserVitalsWidget> createState() => _UserVitalsWidgetState();
}

class _UserVitalsWidgetState extends ConsumerState<UserVitalsWidget> {
  final List<Color> colors = [
    const Color(0xffFFE28A),
    const Color(0xffF6A9AE),
    const Color(0xffAEDFB2),
    const Color(0xff98ADEE),
    const Color(0xff9DF9D7),
  ];
  String _language = '';
  bool _isLocaleReady = false;

  Future<void> getAppLocale() async {
    _language = await getLocale().then((value) {
      return value.languageCode.toLowerCase();
    });
    setState(() {
      _isLocaleReady = true;
    });
  }

  @override
  void initState() {
    getAppLocale();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    if (!_isLocaleReady) {
      return Center(
        child: CircularProgressIndicator(
          color: theme.primary,
        ),
      );
    }
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.3.screenWidth),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          vertical: 0.9.screenHeight,
          horizontal: 3.2.screenWidth,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AsyncValueWidget(
                value: ref.watch(homeUserVitalsServiceProvider),
                errorWidget: (e, st) {
                  return const SizedBox();
                },
                data: (vitals) {
                  final vitalList = vitals?.data;
                  if (vitalList == null || vitalList.isEmpty) {
                    return const SizedBox.shrink();
                  }
                  final vitalSigns = vitalList.first;
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _vitalValue(
                        icon: AssetsHelper.rulerIcon,
                        value: '${vitalSigns.height} ${l10n.cm}',
                        theme: theme,
                      ),
                      _vitalValue(
                        icon: AssetsHelper.heartIcon,
                        value: '${vitalSigns.bloodPressure}',
                        theme: theme,
                      ),
                      _vitalValue(
                        icon: AssetsHelper.scaleIcon,
                        value: '${vitalSigns.weight}${l10n.kg}',
                        theme: theme,
                      ),
                      _vitalValue(
                        icon: AssetsHelper.oxygenIcon,
                        value: '${vitalSigns.oxygenSaturation}%',
                        theme: theme,
                      ),
                      _vitalValue(
                        icon: AssetsHelper.tempIcon,
                        value: '${vitalSigns.temperature}C',
                        theme: theme,
                      ),
                    ],
                  );
                }),
            gapH4,
            AsyncValueWidget(
                value: ref.watch(homeServicesProvProvider),
                errorWidget: (e, st) {
                  return const SizedBox();
                },
                data: (services) {
                  if (services?.data == null) {
                    return const SizedBox.shrink();
                  }
                  return ResponsiveBuilder(
                    builder: (context, sizingInformation) {
                      return SizedBox(
                        height: 8.5.screenHeight,
                        child: SfCartesianChart(
                          plotAreaBorderWidth: 0,
                          plotAreaBackgroundColor: Colors.white,
                          borderColor: Colors.transparent,
                          borderWidth: 0,
                          margin: EdgeInsets.zero,
                          backgroundColor: Colors.white,
                          primaryXAxis: CategoryAxis(
                            labelStyle: theme.labelMedium.copyWith(
                              fontSize: 9,
                              fontWeight: FontWeight.w500,
                              color: theme.dark2E,
                            ),
                            labelRotation: 0,
                            majorGridLines: const MajorGridLines(width: 0),
                            axisLine: const AxisLine(width: 0),
                            majorTickLines: const MajorTickLines(width: 0),
                          ),
                          primaryYAxis: NumericAxis(
                            isVisible: false,
                            majorGridLines: const MajorGridLines(width: 0),
                            axisLine: const AxisLine(width: 0),
                          ),
                          series: <CartesianSeries>[
                            ColumnSeries<ServicesDatum, String>(
                              spacing: 0.2,
                              width: 0.55,
                              enableTrackball: false,
                              borderColor: Colors.transparent,
                              borderWidth: 0.5,
                              color: Colors.white,
                              dataSource: services?.data,
                              // xValueMapper: (data, _) {
                              //   String label = _language == 'ar'
                              //       ? data.serviceGroupName ?? ''
                              //       : data.serviceGroupNameEn ?? '';
                              //   return '$label:${data.serviceCount}';
                              // },
                              // xValueMapper: (data, _) {
                              //   String label = _language == 'ar'
                              //       ? data.serviceGroupName ?? ''
                              //       : data.serviceGroupNameEn ?? '';

                              //   String labelWithCount =
                              //       '$label: ${data.serviceCount}';

                              //   if (labelWithCount.length > 5) {
                              //     final parts = labelWithCount.split(':');
                              //     if (parts.length == 2) {
                              //       return '${parts[0]}\n:${parts[1]}'; // Split into two lines
                              //     }
                              //   }
                              //   return labelWithCount;
                              // },
                              xValueMapper: (data, _) {
                                String label = _language == 'ar'
                                    ? data.serviceGroupName ?? ''
                                    : data.serviceGroupNameEn ?? '';
                                return '$label:${data.serviceCount}';
                              },
                              yValueMapper: (data, _) => data.serviceCount,
                              pointColorMapper: (data, index) =>
                                  colors[index % colors.length],
                              dataLabelSettings: DataLabelSettings(
                                isVisible: false,
                                borderColor: Colors.white,
                                labelAlignment: ChartDataLabelAlignment.outer,
                                textStyle: theme.labelMedium.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: theme.dark2E,
                                ),
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                              ),
                              markerSettings: MarkerSettings(
                                isVisible: false,
                              ),
                              enableTooltip: true,
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }),
          ],
        ),
      ),
    );
  }
}

Widget _vitalValue({String? icon, String? value, FlutterFlowTheme? theme}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset(
        icon ?? '',
        width: 8.5.screenWidth,
      ),
      gapH8,
      Text(
        value ?? '',
        style: theme?.labelMedium.copyWith(
          fontWeight: FontWeight.w500,
          color: theme.dark2E,
        ),
      ),
    ],
  );
}
