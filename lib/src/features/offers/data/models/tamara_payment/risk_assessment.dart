import 'package:freezed_annotation/freezed_annotation.dart';

part 'risk_assessment.freezed.dart';
part 'risk_assessment.g.dart';

@freezed
class RiskAssessment with _$RiskAssessment {
  factory RiskAssessment({
    @JsonKey(name: 'customer_age') num? customerAge,
    @JsonKey(name: 'customer_dob') String? customerDob,
    @JsonKey(name: 'customer_gender') String? customerGender,
    @JsonKey(name: 'customer_nationality') String? customerNationality,
    @JsonKey(name: 'is_premium_customer') bool? isPremiumCustomer,
    @JsonKey(name: 'is_existing_customer') bool? isExistingCustomer,
    @JsonKey(name: 'is_guest_user') bool? isGuestUser,
    @JsonKey(name: 'account_creation_date') String? accountCreationDate,
    @JsonKey(name: 'platform_account_creation_date')
    String? platformAccountCreationDate,
    @JsonKey(name: 'date_of_first_transaction') String? dateOfFirstTransaction,
    @JsonKey(name: 'is_card_on_file') bool? isCardOnFile,
    @JsonKey(name: 'is_COD_customer') bool? isCodCustomer,
    @JsonKey(name: 'has_delivered_order') bool? hasDeliveredOrder,
    @JsonKey(name: 'is_phone_verified') bool? isPhoneVerified,
    @JsonKey(name: 'is_fraudulent_customer') bool? isFraudulentCustomer,
    @JsonKey(name: 'total_ltv') num? totalLtv,
    @JsonKey(name: 'total_order_count') num? totalOrderCount,
    @JsonKey(name: 'order_amount_last3months') num? orderAmountLast3months,
    @JsonKey(name: 'order_count_last3months') num? orderCountLast3months,
    @JsonKey(name: 'last_order_date') String? lastOrderDate,
    @JsonKey(name: 'last_order_amount') num? lastOrderAmount,
    @JsonKey(name: 'reward_program_enrolled') bool? rewardProgramEnrolled,
    @JsonKey(name: 'reward_program_points') num? rewardProgramPoints,
  }) = _RiskAssessment;

  factory RiskAssessment.fromJson(Map<String, dynamic> json) =>
      _$RiskAssessmentFromJson(json);
}
