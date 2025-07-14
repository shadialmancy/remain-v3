import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/custom_error.dart';
import '../../data/repositories_impl/offer_repository_impl.dart';
import '../entities/offers_entity.dart';

part 'offer_repository.g.dart';

@Riverpod(keepAlive: true)
class OffersRepository extends _$OffersRepository {
  @override
  FutureOr<void> build() async {}

  final OfferRepositoryImpl _offerRepositoryImpl = OfferRepositoryImpl();

  OffersEntity? _offersEntity;
  OffersEntity? getOffersEntity() => _offersEntity;

  Future<OffersEntity?> getAllOffers(
      {required String specialtieID, required String locationsID}) async {
    try {
      return await _offerRepositoryImpl.getAllOffers(
          specialtieID: specialtieID, locationsID: locationsID);
    } catch (e, stack) {
      throw CustomError('Failed to get All Offers', err: e, stackTrace: stack);
    }
  }
}
