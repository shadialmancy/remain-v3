import 'package:remain/src/features/offers/data/models/models.dart';

import '../../../../core/errors/custom_error.dart';
import '../../domain/entities/tamara_checkout_response_entity.dart';
import '../datasource/tamara_datasource.dart';

abstract class TamaraRepository {
  Future<TamaraCheckoutResponseEntity?> createCheckoutSession(
      TamaraPayment? payment);
}

class TamaraRepositoryImpl implements TamaraRepository {
  final TamaraSourceImpl dataSource = TamaraSourceImpl();

  @override
  Future<TamaraCheckoutResponseEntity?> createCheckoutSession(
      TamaraPayment? payment) async {
    try {
      return await dataSource.createCheckoutSession(payment).then((value) {
        return value.toEntity();
      });
    } catch (e, stack) {
      //this throw for us to track the error, it will be caught in the terminal
      throw CustomError('Failed to get create checkout session',
          err: e, stackTrace: stack);
    }
  }
}
