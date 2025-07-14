// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'risk_assessment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RiskAssessmentImpl _$$RiskAssessmentImplFromJson(Map<String, dynamic> json) =>
    _$RiskAssessmentImpl(
      customerAge: json['customer_age'] as num?,
      customerDob: json['customer_dob'] as String?,
      customerGender: json['customer_gender'] as String?,
      customerNationality: json['customer_nationality'] as String?,
      isPremiumCustomer: json['is_premium_customer'] as bool?,
      isExistingCustomer: json['is_existing_customer'] as bool?,
      isGuestUser: json['is_guest_user'] as bool?,
      accountCreationDate: json['account_creation_date'] as String?,
      platformAccountCreationDate:
          json['platform_account_creation_date'] as String?,
      dateOfFirstTransaction: json['date_of_first_transaction'] as String?,
      isCardOnFile: json['is_card_on_file'] as bool?,
      isCodCustomer: json['is_COD_customer'] as bool?,
      hasDeliveredOrder: json['has_delivered_order'] as bool?,
      isPhoneVerified: json['is_phone_verified'] as bool?,
      isFraudulentCustomer: json['is_fraudulent_customer'] as bool?,
      totalLtv: json['total_ltv'] as num?,
      totalOrderCount: json['total_order_count'] as num?,
      orderAmountLast3months: json['order_amount_last3months'] as num?,
      orderCountLast3months: json['order_count_last3months'] as num?,
      lastOrderDate: json['last_order_date'] as String?,
      lastOrderAmount: json['last_order_amount'] as num?,
      rewardProgramEnrolled: json['reward_program_enrolled'] as bool?,
      rewardProgramPoints: json['reward_program_points'] as num?,
    );

Map<String, dynamic> _$$RiskAssessmentImplToJson(
        _$RiskAssessmentImpl instance) =>
    <String, dynamic>{
      'customer_age': instance.customerAge,
      'customer_dob': instance.customerDob,
      'customer_gender': instance.customerGender,
      'customer_nationality': instance.customerNationality,
      'is_premium_customer': instance.isPremiumCustomer,
      'is_existing_customer': instance.isExistingCustomer,
      'is_guest_user': instance.isGuestUser,
      'account_creation_date': instance.accountCreationDate,
      'platform_account_creation_date': instance.platformAccountCreationDate,
      'date_of_first_transaction': instance.dateOfFirstTransaction,
      'is_card_on_file': instance.isCardOnFile,
      'is_COD_customer': instance.isCodCustomer,
      'has_delivered_order': instance.hasDeliveredOrder,
      'is_phone_verified': instance.isPhoneVerified,
      'is_fraudulent_customer': instance.isFraudulentCustomer,
      'total_ltv': instance.totalLtv,
      'total_order_count': instance.totalOrderCount,
      'order_amount_last3months': instance.orderAmountLast3months,
      'order_count_last3months': instance.orderCountLast3months,
      'last_order_date': instance.lastOrderDate,
      'last_order_amount': instance.lastOrderAmount,
      'reward_program_enrolled': instance.rewardProgramEnrolled,
      'reward_program_points': instance.rewardProgramPoints,
    };
