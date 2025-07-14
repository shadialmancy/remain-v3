import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:remain/src/features/payments/domain/entities/user_payments_due_entity.dart';

import 'payments_due_datum.dart';

part 'user_payments_due_dto.freezed.dart';
part 'user_payments_due_dto.g.dart';

@freezed
class UserPaymentsDueDto with _$UserPaymentsDueDto {
  factory UserPaymentsDueDto({
    @JsonKey(name: 'request_id') String? requestId,
    int? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    int? totalpage,
    List<PaymentsDueDatum>? data,
  }) = _UserPaymentsDueDto;

  factory UserPaymentsDueDto.fromJson(Map<String, dynamic> json) =>
      _$UserPaymentsDueDtoFromJson(json);
}

extension UserPaymentsDueDtoX on UserPaymentsDueDto {
  UserPaymentsDueEntity toEntity() {
    return UserPaymentsDueEntity(
      requestId: requestId,
      code: code,
      errorMessage: errorMessage,
      totalpage: totalpage,
      data: data,
    );
  }
}
