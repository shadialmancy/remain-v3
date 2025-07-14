import 'package:remain/src/features/offers/data/models/models.dart';

import '../../../../core/errors/custom_error.dart';
import '../../domain/entities/offers_entity.dart';
import '../datasource/offer_datasource.dart';

abstract class BaseOfferRepository {
  Future<OffersEntity?> getAllOffers(
      {required String specialtieID, required String locationsID});
}

class OfferRepositoryImpl implements BaseOfferRepository {
  final OfferSourceImpl dataSource = OfferSourceImpl();

  @override
  Future<OffersEntity?> getAllOffers(
      {required String specialtieID, required String locationsID}) async {
    try {
      return await dataSource
          .getAllOffers(locationsID: locationsID, specialtieID: specialtieID)
          .then((value) {
        return value.toEntity();
      });
    } catch (e, stack) {
      //this throw for us to track the error, it will be caught in the terminal
      throw CustomError('Failed to get all offers', err: e, stackTrace: stack);
    }
  }
}
