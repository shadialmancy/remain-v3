import 'package:freezed_annotation/freezed_annotation.dart';

import 'order.dart';

part 'payments_due_datum.freezed.dart';
part 'payments_due_datum.g.dart';

@freezed
class PaymentsDueDatum with _$PaymentsDueDatum {
  factory PaymentsDueDatum({
    int? orderId,
    String? patientName,
    String? doctorName,
    String? respCenter,
    String? payMethod,
    String? isSaudi,
    String? telephone,
    int? fileNum,
    String? transDate,
    String? locationNmae,
    int? totalAmount,
    int? totalWitVatAmount,
    int? vatAmount,
    List<Order>? orders,
  }) = _PaymentsDueDatum;

  factory PaymentsDueDatum.fromJson(Map<String, dynamic> json) =>
      _$PaymentsDueDatumFromJson(json);
}
