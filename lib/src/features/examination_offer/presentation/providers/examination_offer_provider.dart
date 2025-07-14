import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/errors/custom_error.dart';
import '../../../offers/domain/entities/entities.dart';
import '../../../offers/domain/repositories/offer_repository.dart';

part 'examination_offer_provider.g.dart';

@Riverpod(keepAlive: true)
class ExaminationOfferService extends _$ExaminationOfferService {
  @override
  FutureOr<OffersEntity?> build() async {
    return getAllOffers();
  }

  OffersEntity? _offersEntity;

  Future<OffersEntity?> getAllOffers(
      {String specialtieID = '28', String locationsID = '02'}) async {
    state = AsyncValue.loading();
    final offerService = ref.watch(offersRepositoryProvider.notifier);
    try {
      if (specialtieID.isNotEmpty && locationsID.isNotEmpty) {
        _offersEntity = await offerService.getAllOffers(
            specialtieID: specialtieID, locationsID: locationsID);
      }
      state = AsyncData(_offersEntity);
      return _offersEntity;
    } catch (e, stack) {
      state = const AsyncData(null);
      throw CustomError('Failed to get offers', err: e, stackTrace: stack);
    }
  }
}
