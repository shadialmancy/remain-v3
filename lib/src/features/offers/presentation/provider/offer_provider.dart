import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/errors/custom_error.dart';
import '../../domain/entities/offers_entity.dart';
import '../../domain/repositories/offer_repository.dart';

part 'offer_provider.g.dart';

@Riverpod(keepAlive: true)
class OfferService extends _$OfferService {
  @override
  FutureOr<OffersEntity?> build() async {
    return getAllOffers();
  }

  OffersEntity? _offersEntity;

  Future<OffersEntity?> getAllOffers(
      {String specialtieID = '21', String locationsID = '06'}) async {
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
