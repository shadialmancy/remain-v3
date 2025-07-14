import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:remain/src/features/payments/data/models/user_payments_due_dto/user_payments_due_dto.dart';
import '../../data/models/user_payments_due_dto/payments_due_datum.dart';
part 'user_payments_due_entity.freezed.dart';
part 'user_payments_due_entity.g.dart';

@freezed
class UserPaymentsDueEntity with _$UserPaymentsDueEntity {
  factory UserPaymentsDueEntity({
    @JsonKey(name: 'request_id') String? requestId,
    int? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    int? totalpage,
    List<PaymentsDueDatum>? data,
  }) = _UserPaymentsDueEntity;

  factory UserPaymentsDueEntity.fromJson(Map<String, dynamic> json) =>
      _$UserPaymentsDueEntityFromJson(json);
}

extension UserPaymentsDueEntityX on UserPaymentsDueEntity {
  UserPaymentsDueDto toDto() {
    return UserPaymentsDueDto(
      requestId: requestId,
      code: code,
      errorMessage: errorMessage,
      totalpage: totalpage,
      data: data,
    );
  }
}
