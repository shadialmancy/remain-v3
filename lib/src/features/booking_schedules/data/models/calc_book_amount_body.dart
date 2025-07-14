// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'calc_book_amount_body.freezed.dart';
part 'calc_book_amount_body.g.dart';

@freezed
class CalcBookAmountBody with _$CalcBookAmountBody {
  factory CalcBookAmountBody({
    @JsonKey(name: 'bookingID') String? bookingId,
    String? pateintId,
    String? accountId,
    String? doctorId,
    String? docSpecId,
    String? admissionId,
    String? programVersionPatientId,
    String? programId,
    String? inOut,
    String? payMethod,
    String? transDate,
    String? userId,
    String? groupId,
    String? statusFlage,
    String? serviceItemId,
    String? serviceCatId,
    String? quantity,
    String? consultationTransHdrId,
  }) = _CalcBookAmountBody;

  factory CalcBookAmountBody.fromJson(Map<String, dynamic> json) =>
      _$CalcBookAmountBodyFromJson(json);
}
