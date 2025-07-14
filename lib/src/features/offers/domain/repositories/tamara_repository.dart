import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/custom_error.dart';
import '../../data/models/models.dart';
import '../../data/repositories_impl/tamara_repository_impl.dart';
import '../entities/tamara_checkout_response_entity.dart';

part 'tamara_repository.g.dart';

@Riverpod(keepAlive: true)
class TamaraRepository extends _$TamaraRepository {
  @override
  FutureOr<void> build() async {}

  final TamaraRepositoryImpl _tamaraRepositoryImpl = TamaraRepositoryImpl();

  TamaraCheckoutResponseEntity? _tamaraCheckoutResponseEntity;
  TamaraCheckoutResponseEntity? getTamaraCheckoutResponseEntity() =>
      _tamaraCheckoutResponseEntity;

  Future<TamaraCheckoutResponseEntity?> createCheckoutSession(
      TamaraPayment? payment) async {
    try {
      return await _tamaraRepositoryImpl.createCheckoutSession(payment);
    } catch (e, stack) {
      throw CustomError('Failed to create checkout session',
          err: e, stackTrace: stack);
    }
  }
}
