// ignore_for_file: avoid_public_notifier_properties
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../../l10n/generated/l10n.dart';
import '../../../../core/helpers/session_manager.dart';
part 'medical_center_service.g.dart';

@Riverpod(keepAlive: true)
class MedicalCenterService extends _$MedicalCenterService {
  @override
  FutureOr<int> build() async {
    await getUserSelectedCenter();
    return currentCenterID;
  }

  List<String> listOfCenters = [];
  String? currentCenter;
  int currentCenterID = 0;
  void addToCenterList(AppLocalizations l10n) {
    listOfCenters = [
      l10n.medicalCenterJaddah,
      l10n.medicalCenterQortobah,
      l10n.medicalCenterRawdah,
    ];
  }

  int userSelectedCenter = 0;
  Future<void> setNewUserSelectedCenter(int centerId) async {
    await sessionManager.setChosenMedicalCenter(centerId: centerId);
    currentCenterID = centerId;
    state = AsyncData(centerId);
  }

  Future<void> getUserSelectedCenter() async {
    state = const AsyncLoading();
    userSelectedCenter = await sessionManager.getChosenMedicalCenter();
    switch (userSelectedCenter) {
      case 2:
        currentCenter = listOfCenters[0];
        currentCenterID = 2;
        break;
      case 3:
        currentCenter = listOfCenters[2];
        currentCenterID = 3;

        break;
      case 4:
        currentCenter = listOfCenters[1];
        currentCenterID = 4;
        break;
      default:
        currentCenterID = 0;
    }
    state = AsyncData(currentCenterID);
  }

  String getCenterID(String? newValue, AppLocalizations l10n) {
    if (newValue == l10n.medicalCenterJaddah) {
      return '2';
    } else if (newValue == l10n.medicalCenterQortobah) {
      return '4';
    } else if (newValue == l10n.medicalCenterRawdah) {
      return '3';
    } else {
      return '0';
    }
  }
}
