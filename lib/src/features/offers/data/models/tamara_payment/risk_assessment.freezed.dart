// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'risk_assessment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RiskAssessment _$RiskAssessmentFromJson(Map<String, dynamic> json) {
  return _RiskAssessment.fromJson(json);
}

/// @nodoc
mixin _$RiskAssessment {
  @JsonKey(name: 'customer_age')
  num? get customerAge => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_dob')
  String? get customerDob => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_gender')
  String? get customerGender => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_nationality')
  String? get customerNationality => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_premium_customer')
  bool? get isPremiumCustomer => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_existing_customer')
  bool? get isExistingCustomer => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_guest_user')
  bool? get isGuestUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_creation_date')
  String? get accountCreationDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'platform_account_creation_date')
  String? get platformAccountCreationDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_first_transaction')
  String? get dateOfFirstTransaction => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_card_on_file')
  bool? get isCardOnFile => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_COD_customer')
  bool? get isCodCustomer => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_delivered_order')
  bool? get hasDeliveredOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_phone_verified')
  bool? get isPhoneVerified => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_fraudulent_customer')
  bool? get isFraudulentCustomer => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_ltv')
  num? get totalLtv => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_order_count')
  num? get totalOrderCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_amount_last3months')
  num? get orderAmountLast3months => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_count_last3months')
  num? get orderCountLast3months => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_order_date')
  String? get lastOrderDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_order_amount')
  num? get lastOrderAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'reward_program_enrolled')
  bool? get rewardProgramEnrolled => throw _privateConstructorUsedError;
  @JsonKey(name: 'reward_program_points')
  num? get rewardProgramPoints => throw _privateConstructorUsedError;

  /// Serializes this RiskAssessment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RiskAssessment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RiskAssessmentCopyWith<RiskAssessment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RiskAssessmentCopyWith<$Res> {
  factory $RiskAssessmentCopyWith(
          RiskAssessment value, $Res Function(RiskAssessment) then) =
      _$RiskAssessmentCopyWithImpl<$Res, RiskAssessment>;
  @useResult
  $Res call(
      {@JsonKey(name: 'customer_age') num? customerAge,
      @JsonKey(name: 'customer_dob') String? customerDob,
      @JsonKey(name: 'customer_gender') String? customerGender,
      @JsonKey(name: 'customer_nationality') String? customerNationality,
      @JsonKey(name: 'is_premium_customer') bool? isPremiumCustomer,
      @JsonKey(name: 'is_existing_customer') bool? isExistingCustomer,
      @JsonKey(name: 'is_guest_user') bool? isGuestUser,
      @JsonKey(name: 'account_creation_date') String? accountCreationDate,
      @JsonKey(name: 'platform_account_creation_date')
      String? platformAccountCreationDate,
      @JsonKey(name: 'date_of_first_transaction')
      String? dateOfFirstTransaction,
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
      @JsonKey(name: 'reward_program_points') num? rewardProgramPoints});
}

/// @nodoc
class _$RiskAssessmentCopyWithImpl<$Res, $Val extends RiskAssessment>
    implements $RiskAssessmentCopyWith<$Res> {
  _$RiskAssessmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RiskAssessment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerAge = freezed,
    Object? customerDob = freezed,
    Object? customerGender = freezed,
    Object? customerNationality = freezed,
    Object? isPremiumCustomer = freezed,
    Object? isExistingCustomer = freezed,
    Object? isGuestUser = freezed,
    Object? accountCreationDate = freezed,
    Object? platformAccountCreationDate = freezed,
    Object? dateOfFirstTransaction = freezed,
    Object? isCardOnFile = freezed,
    Object? isCodCustomer = freezed,
    Object? hasDeliveredOrder = freezed,
    Object? isPhoneVerified = freezed,
    Object? isFraudulentCustomer = freezed,
    Object? totalLtv = freezed,
    Object? totalOrderCount = freezed,
    Object? orderAmountLast3months = freezed,
    Object? orderCountLast3months = freezed,
    Object? lastOrderDate = freezed,
    Object? lastOrderAmount = freezed,
    Object? rewardProgramEnrolled = freezed,
    Object? rewardProgramPoints = freezed,
  }) {
    return _then(_value.copyWith(
      customerAge: freezed == customerAge
          ? _value.customerAge
          : customerAge // ignore: cast_nullable_to_non_nullable
              as num?,
      customerDob: freezed == customerDob
          ? _value.customerDob
          : customerDob // ignore: cast_nullable_to_non_nullable
              as String?,
      customerGender: freezed == customerGender
          ? _value.customerGender
          : customerGender // ignore: cast_nullable_to_non_nullable
              as String?,
      customerNationality: freezed == customerNationality
          ? _value.customerNationality
          : customerNationality // ignore: cast_nullable_to_non_nullable
              as String?,
      isPremiumCustomer: freezed == isPremiumCustomer
          ? _value.isPremiumCustomer
          : isPremiumCustomer // ignore: cast_nullable_to_non_nullable
              as bool?,
      isExistingCustomer: freezed == isExistingCustomer
          ? _value.isExistingCustomer
          : isExistingCustomer // ignore: cast_nullable_to_non_nullable
              as bool?,
      isGuestUser: freezed == isGuestUser
          ? _value.isGuestUser
          : isGuestUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      accountCreationDate: freezed == accountCreationDate
          ? _value.accountCreationDate
          : accountCreationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      platformAccountCreationDate: freezed == platformAccountCreationDate
          ? _value.platformAccountCreationDate
          : platformAccountCreationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfFirstTransaction: freezed == dateOfFirstTransaction
          ? _value.dateOfFirstTransaction
          : dateOfFirstTransaction // ignore: cast_nullable_to_non_nullable
              as String?,
      isCardOnFile: freezed == isCardOnFile
          ? _value.isCardOnFile
          : isCardOnFile // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCodCustomer: freezed == isCodCustomer
          ? _value.isCodCustomer
          : isCodCustomer // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasDeliveredOrder: freezed == hasDeliveredOrder
          ? _value.hasDeliveredOrder
          : hasDeliveredOrder // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPhoneVerified: freezed == isPhoneVerified
          ? _value.isPhoneVerified
          : isPhoneVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFraudulentCustomer: freezed == isFraudulentCustomer
          ? _value.isFraudulentCustomer
          : isFraudulentCustomer // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalLtv: freezed == totalLtv
          ? _value.totalLtv
          : totalLtv // ignore: cast_nullable_to_non_nullable
              as num?,
      totalOrderCount: freezed == totalOrderCount
          ? _value.totalOrderCount
          : totalOrderCount // ignore: cast_nullable_to_non_nullable
              as num?,
      orderAmountLast3months: freezed == orderAmountLast3months
          ? _value.orderAmountLast3months
          : orderAmountLast3months // ignore: cast_nullable_to_non_nullable
              as num?,
      orderCountLast3months: freezed == orderCountLast3months
          ? _value.orderCountLast3months
          : orderCountLast3months // ignore: cast_nullable_to_non_nullable
              as num?,
      lastOrderDate: freezed == lastOrderDate
          ? _value.lastOrderDate
          : lastOrderDate // ignore: cast_nullable_to_non_nullable
              as String?,
      lastOrderAmount: freezed == lastOrderAmount
          ? _value.lastOrderAmount
          : lastOrderAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      rewardProgramEnrolled: freezed == rewardProgramEnrolled
          ? _value.rewardProgramEnrolled
          : rewardProgramEnrolled // ignore: cast_nullable_to_non_nullable
              as bool?,
      rewardProgramPoints: freezed == rewardProgramPoints
          ? _value.rewardProgramPoints
          : rewardProgramPoints // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RiskAssessmentImplCopyWith<$Res>
    implements $RiskAssessmentCopyWith<$Res> {
  factory _$$RiskAssessmentImplCopyWith(_$RiskAssessmentImpl value,
          $Res Function(_$RiskAssessmentImpl) then) =
      __$$RiskAssessmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'customer_age') num? customerAge,
      @JsonKey(name: 'customer_dob') String? customerDob,
      @JsonKey(name: 'customer_gender') String? customerGender,
      @JsonKey(name: 'customer_nationality') String? customerNationality,
      @JsonKey(name: 'is_premium_customer') bool? isPremiumCustomer,
      @JsonKey(name: 'is_existing_customer') bool? isExistingCustomer,
      @JsonKey(name: 'is_guest_user') bool? isGuestUser,
      @JsonKey(name: 'account_creation_date') String? accountCreationDate,
      @JsonKey(name: 'platform_account_creation_date')
      String? platformAccountCreationDate,
      @JsonKey(name: 'date_of_first_transaction')
      String? dateOfFirstTransaction,
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
      @JsonKey(name: 'reward_program_points') num? rewardProgramPoints});
}

/// @nodoc
class __$$RiskAssessmentImplCopyWithImpl<$Res>
    extends _$RiskAssessmentCopyWithImpl<$Res, _$RiskAssessmentImpl>
    implements _$$RiskAssessmentImplCopyWith<$Res> {
  __$$RiskAssessmentImplCopyWithImpl(
      _$RiskAssessmentImpl _value, $Res Function(_$RiskAssessmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of RiskAssessment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerAge = freezed,
    Object? customerDob = freezed,
    Object? customerGender = freezed,
    Object? customerNationality = freezed,
    Object? isPremiumCustomer = freezed,
    Object? isExistingCustomer = freezed,
    Object? isGuestUser = freezed,
    Object? accountCreationDate = freezed,
    Object? platformAccountCreationDate = freezed,
    Object? dateOfFirstTransaction = freezed,
    Object? isCardOnFile = freezed,
    Object? isCodCustomer = freezed,
    Object? hasDeliveredOrder = freezed,
    Object? isPhoneVerified = freezed,
    Object? isFraudulentCustomer = freezed,
    Object? totalLtv = freezed,
    Object? totalOrderCount = freezed,
    Object? orderAmountLast3months = freezed,
    Object? orderCountLast3months = freezed,
    Object? lastOrderDate = freezed,
    Object? lastOrderAmount = freezed,
    Object? rewardProgramEnrolled = freezed,
    Object? rewardProgramPoints = freezed,
  }) {
    return _then(_$RiskAssessmentImpl(
      customerAge: freezed == customerAge
          ? _value.customerAge
          : customerAge // ignore: cast_nullable_to_non_nullable
              as num?,
      customerDob: freezed == customerDob
          ? _value.customerDob
          : customerDob // ignore: cast_nullable_to_non_nullable
              as String?,
      customerGender: freezed == customerGender
          ? _value.customerGender
          : customerGender // ignore: cast_nullable_to_non_nullable
              as String?,
      customerNationality: freezed == customerNationality
          ? _value.customerNationality
          : customerNationality // ignore: cast_nullable_to_non_nullable
              as String?,
      isPremiumCustomer: freezed == isPremiumCustomer
          ? _value.isPremiumCustomer
          : isPremiumCustomer // ignore: cast_nullable_to_non_nullable
              as bool?,
      isExistingCustomer: freezed == isExistingCustomer
          ? _value.isExistingCustomer
          : isExistingCustomer // ignore: cast_nullable_to_non_nullable
              as bool?,
      isGuestUser: freezed == isGuestUser
          ? _value.isGuestUser
          : isGuestUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      accountCreationDate: freezed == accountCreationDate
          ? _value.accountCreationDate
          : accountCreationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      platformAccountCreationDate: freezed == platformAccountCreationDate
          ? _value.platformAccountCreationDate
          : platformAccountCreationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfFirstTransaction: freezed == dateOfFirstTransaction
          ? _value.dateOfFirstTransaction
          : dateOfFirstTransaction // ignore: cast_nullable_to_non_nullable
              as String?,
      isCardOnFile: freezed == isCardOnFile
          ? _value.isCardOnFile
          : isCardOnFile // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCodCustomer: freezed == isCodCustomer
          ? _value.isCodCustomer
          : isCodCustomer // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasDeliveredOrder: freezed == hasDeliveredOrder
          ? _value.hasDeliveredOrder
          : hasDeliveredOrder // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPhoneVerified: freezed == isPhoneVerified
          ? _value.isPhoneVerified
          : isPhoneVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFraudulentCustomer: freezed == isFraudulentCustomer
          ? _value.isFraudulentCustomer
          : isFraudulentCustomer // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalLtv: freezed == totalLtv
          ? _value.totalLtv
          : totalLtv // ignore: cast_nullable_to_non_nullable
              as num?,
      totalOrderCount: freezed == totalOrderCount
          ? _value.totalOrderCount
          : totalOrderCount // ignore: cast_nullable_to_non_nullable
              as num?,
      orderAmountLast3months: freezed == orderAmountLast3months
          ? _value.orderAmountLast3months
          : orderAmountLast3months // ignore: cast_nullable_to_non_nullable
              as num?,
      orderCountLast3months: freezed == orderCountLast3months
          ? _value.orderCountLast3months
          : orderCountLast3months // ignore: cast_nullable_to_non_nullable
              as num?,
      lastOrderDate: freezed == lastOrderDate
          ? _value.lastOrderDate
          : lastOrderDate // ignore: cast_nullable_to_non_nullable
              as String?,
      lastOrderAmount: freezed == lastOrderAmount
          ? _value.lastOrderAmount
          : lastOrderAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      rewardProgramEnrolled: freezed == rewardProgramEnrolled
          ? _value.rewardProgramEnrolled
          : rewardProgramEnrolled // ignore: cast_nullable_to_non_nullable
              as bool?,
      rewardProgramPoints: freezed == rewardProgramPoints
          ? _value.rewardProgramPoints
          : rewardProgramPoints // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RiskAssessmentImpl implements _RiskAssessment {
  _$RiskAssessmentImpl(
      {@JsonKey(name: 'customer_age') this.customerAge,
      @JsonKey(name: 'customer_dob') this.customerDob,
      @JsonKey(name: 'customer_gender') this.customerGender,
      @JsonKey(name: 'customer_nationality') this.customerNationality,
      @JsonKey(name: 'is_premium_customer') this.isPremiumCustomer,
      @JsonKey(name: 'is_existing_customer') this.isExistingCustomer,
      @JsonKey(name: 'is_guest_user') this.isGuestUser,
      @JsonKey(name: 'account_creation_date') this.accountCreationDate,
      @JsonKey(name: 'platform_account_creation_date')
      this.platformAccountCreationDate,
      @JsonKey(name: 'date_of_first_transaction') this.dateOfFirstTransaction,
      @JsonKey(name: 'is_card_on_file') this.isCardOnFile,
      @JsonKey(name: 'is_COD_customer') this.isCodCustomer,
      @JsonKey(name: 'has_delivered_order') this.hasDeliveredOrder,
      @JsonKey(name: 'is_phone_verified') this.isPhoneVerified,
      @JsonKey(name: 'is_fraudulent_customer') this.isFraudulentCustomer,
      @JsonKey(name: 'total_ltv') this.totalLtv,
      @JsonKey(name: 'total_order_count') this.totalOrderCount,
      @JsonKey(name: 'order_amount_last3months') this.orderAmountLast3months,
      @JsonKey(name: 'order_count_last3months') this.orderCountLast3months,
      @JsonKey(name: 'last_order_date') this.lastOrderDate,
      @JsonKey(name: 'last_order_amount') this.lastOrderAmount,
      @JsonKey(name: 'reward_program_enrolled') this.rewardProgramEnrolled,
      @JsonKey(name: 'reward_program_points') this.rewardProgramPoints});

  factory _$RiskAssessmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$RiskAssessmentImplFromJson(json);

  @override
  @JsonKey(name: 'customer_age')
  final num? customerAge;
  @override
  @JsonKey(name: 'customer_dob')
  final String? customerDob;
  @override
  @JsonKey(name: 'customer_gender')
  final String? customerGender;
  @override
  @JsonKey(name: 'customer_nationality')
  final String? customerNationality;
  @override
  @JsonKey(name: 'is_premium_customer')
  final bool? isPremiumCustomer;
  @override
  @JsonKey(name: 'is_existing_customer')
  final bool? isExistingCustomer;
  @override
  @JsonKey(name: 'is_guest_user')
  final bool? isGuestUser;
  @override
  @JsonKey(name: 'account_creation_date')
  final String? accountCreationDate;
  @override
  @JsonKey(name: 'platform_account_creation_date')
  final String? platformAccountCreationDate;
  @override
  @JsonKey(name: 'date_of_first_transaction')
  final String? dateOfFirstTransaction;
  @override
  @JsonKey(name: 'is_card_on_file')
  final bool? isCardOnFile;
  @override
  @JsonKey(name: 'is_COD_customer')
  final bool? isCodCustomer;
  @override
  @JsonKey(name: 'has_delivered_order')
  final bool? hasDeliveredOrder;
  @override
  @JsonKey(name: 'is_phone_verified')
  final bool? isPhoneVerified;
  @override
  @JsonKey(name: 'is_fraudulent_customer')
  final bool? isFraudulentCustomer;
  @override
  @JsonKey(name: 'total_ltv')
  final num? totalLtv;
  @override
  @JsonKey(name: 'total_order_count')
  final num? totalOrderCount;
  @override
  @JsonKey(name: 'order_amount_last3months')
  final num? orderAmountLast3months;
  @override
  @JsonKey(name: 'order_count_last3months')
  final num? orderCountLast3months;
  @override
  @JsonKey(name: 'last_order_date')
  final String? lastOrderDate;
  @override
  @JsonKey(name: 'last_order_amount')
  final num? lastOrderAmount;
  @override
  @JsonKey(name: 'reward_program_enrolled')
  final bool? rewardProgramEnrolled;
  @override
  @JsonKey(name: 'reward_program_points')
  final num? rewardProgramPoints;

  @override
  String toString() {
    return 'RiskAssessment(customerAge: $customerAge, customerDob: $customerDob, customerGender: $customerGender, customerNationality: $customerNationality, isPremiumCustomer: $isPremiumCustomer, isExistingCustomer: $isExistingCustomer, isGuestUser: $isGuestUser, accountCreationDate: $accountCreationDate, platformAccountCreationDate: $platformAccountCreationDate, dateOfFirstTransaction: $dateOfFirstTransaction, isCardOnFile: $isCardOnFile, isCodCustomer: $isCodCustomer, hasDeliveredOrder: $hasDeliveredOrder, isPhoneVerified: $isPhoneVerified, isFraudulentCustomer: $isFraudulentCustomer, totalLtv: $totalLtv, totalOrderCount: $totalOrderCount, orderAmountLast3months: $orderAmountLast3months, orderCountLast3months: $orderCountLast3months, lastOrderDate: $lastOrderDate, lastOrderAmount: $lastOrderAmount, rewardProgramEnrolled: $rewardProgramEnrolled, rewardProgramPoints: $rewardProgramPoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RiskAssessmentImpl &&
            (identical(other.customerAge, customerAge) ||
                other.customerAge == customerAge) &&
            (identical(other.customerDob, customerDob) ||
                other.customerDob == customerDob) &&
            (identical(other.customerGender, customerGender) ||
                other.customerGender == customerGender) &&
            (identical(other.customerNationality, customerNationality) ||
                other.customerNationality == customerNationality) &&
            (identical(other.isPremiumCustomer, isPremiumCustomer) ||
                other.isPremiumCustomer == isPremiumCustomer) &&
            (identical(other.isExistingCustomer, isExistingCustomer) ||
                other.isExistingCustomer == isExistingCustomer) &&
            (identical(other.isGuestUser, isGuestUser) ||
                other.isGuestUser == isGuestUser) &&
            (identical(other.accountCreationDate, accountCreationDate) ||
                other.accountCreationDate == accountCreationDate) &&
            (identical(other.platformAccountCreationDate,
                    platformAccountCreationDate) ||
                other.platformAccountCreationDate ==
                    platformAccountCreationDate) &&
            (identical(other.dateOfFirstTransaction, dateOfFirstTransaction) ||
                other.dateOfFirstTransaction == dateOfFirstTransaction) &&
            (identical(other.isCardOnFile, isCardOnFile) ||
                other.isCardOnFile == isCardOnFile) &&
            (identical(other.isCodCustomer, isCodCustomer) ||
                other.isCodCustomer == isCodCustomer) &&
            (identical(other.hasDeliveredOrder, hasDeliveredOrder) ||
                other.hasDeliveredOrder == hasDeliveredOrder) &&
            (identical(other.isPhoneVerified, isPhoneVerified) ||
                other.isPhoneVerified == isPhoneVerified) &&
            (identical(other.isFraudulentCustomer, isFraudulentCustomer) ||
                other.isFraudulentCustomer == isFraudulentCustomer) &&
            (identical(other.totalLtv, totalLtv) ||
                other.totalLtv == totalLtv) &&
            (identical(other.totalOrderCount, totalOrderCount) ||
                other.totalOrderCount == totalOrderCount) &&
            (identical(other.orderAmountLast3months, orderAmountLast3months) ||
                other.orderAmountLast3months == orderAmountLast3months) &&
            (identical(other.orderCountLast3months, orderCountLast3months) ||
                other.orderCountLast3months == orderCountLast3months) &&
            (identical(other.lastOrderDate, lastOrderDate) ||
                other.lastOrderDate == lastOrderDate) &&
            (identical(other.lastOrderAmount, lastOrderAmount) ||
                other.lastOrderAmount == lastOrderAmount) &&
            (identical(other.rewardProgramEnrolled, rewardProgramEnrolled) ||
                other.rewardProgramEnrolled == rewardProgramEnrolled) &&
            (identical(other.rewardProgramPoints, rewardProgramPoints) ||
                other.rewardProgramPoints == rewardProgramPoints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        customerAge,
        customerDob,
        customerGender,
        customerNationality,
        isPremiumCustomer,
        isExistingCustomer,
        isGuestUser,
        accountCreationDate,
        platformAccountCreationDate,
        dateOfFirstTransaction,
        isCardOnFile,
        isCodCustomer,
        hasDeliveredOrder,
        isPhoneVerified,
        isFraudulentCustomer,
        totalLtv,
        totalOrderCount,
        orderAmountLast3months,
        orderCountLast3months,
        lastOrderDate,
        lastOrderAmount,
        rewardProgramEnrolled,
        rewardProgramPoints
      ]);

  /// Create a copy of RiskAssessment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RiskAssessmentImplCopyWith<_$RiskAssessmentImpl> get copyWith =>
      __$$RiskAssessmentImplCopyWithImpl<_$RiskAssessmentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RiskAssessmentImplToJson(
      this,
    );
  }
}

abstract class _RiskAssessment implements RiskAssessment {
  factory _RiskAssessment(
      {@JsonKey(name: 'customer_age') final num? customerAge,
      @JsonKey(name: 'customer_dob') final String? customerDob,
      @JsonKey(name: 'customer_gender') final String? customerGender,
      @JsonKey(name: 'customer_nationality') final String? customerNationality,
      @JsonKey(name: 'is_premium_customer') final bool? isPremiumCustomer,
      @JsonKey(name: 'is_existing_customer') final bool? isExistingCustomer,
      @JsonKey(name: 'is_guest_user') final bool? isGuestUser,
      @JsonKey(name: 'account_creation_date') final String? accountCreationDate,
      @JsonKey(name: 'platform_account_creation_date')
      final String? platformAccountCreationDate,
      @JsonKey(name: 'date_of_first_transaction')
      final String? dateOfFirstTransaction,
      @JsonKey(name: 'is_card_on_file') final bool? isCardOnFile,
      @JsonKey(name: 'is_COD_customer') final bool? isCodCustomer,
      @JsonKey(name: 'has_delivered_order') final bool? hasDeliveredOrder,
      @JsonKey(name: 'is_phone_verified') final bool? isPhoneVerified,
      @JsonKey(name: 'is_fraudulent_customer') final bool? isFraudulentCustomer,
      @JsonKey(name: 'total_ltv') final num? totalLtv,
      @JsonKey(name: 'total_order_count') final num? totalOrderCount,
      @JsonKey(name: 'order_amount_last3months')
      final num? orderAmountLast3months,
      @JsonKey(name: 'order_count_last3months')
      final num? orderCountLast3months,
      @JsonKey(name: 'last_order_date') final String? lastOrderDate,
      @JsonKey(name: 'last_order_amount') final num? lastOrderAmount,
      @JsonKey(name: 'reward_program_enrolled')
      final bool? rewardProgramEnrolled,
      @JsonKey(name: 'reward_program_points')
      final num? rewardProgramPoints}) = _$RiskAssessmentImpl;

  factory _RiskAssessment.fromJson(Map<String, dynamic> json) =
      _$RiskAssessmentImpl.fromJson;

  @override
  @JsonKey(name: 'customer_age')
  num? get customerAge;
  @override
  @JsonKey(name: 'customer_dob')
  String? get customerDob;
  @override
  @JsonKey(name: 'customer_gender')
  String? get customerGender;
  @override
  @JsonKey(name: 'customer_nationality')
  String? get customerNationality;
  @override
  @JsonKey(name: 'is_premium_customer')
  bool? get isPremiumCustomer;
  @override
  @JsonKey(name: 'is_existing_customer')
  bool? get isExistingCustomer;
  @override
  @JsonKey(name: 'is_guest_user')
  bool? get isGuestUser;
  @override
  @JsonKey(name: 'account_creation_date')
  String? get accountCreationDate;
  @override
  @JsonKey(name: 'platform_account_creation_date')
  String? get platformAccountCreationDate;
  @override
  @JsonKey(name: 'date_of_first_transaction')
  String? get dateOfFirstTransaction;
  @override
  @JsonKey(name: 'is_card_on_file')
  bool? get isCardOnFile;
  @override
  @JsonKey(name: 'is_COD_customer')
  bool? get isCodCustomer;
  @override
  @JsonKey(name: 'has_delivered_order')
  bool? get hasDeliveredOrder;
  @override
  @JsonKey(name: 'is_phone_verified')
  bool? get isPhoneVerified;
  @override
  @JsonKey(name: 'is_fraudulent_customer')
  bool? get isFraudulentCustomer;
  @override
  @JsonKey(name: 'total_ltv')
  num? get totalLtv;
  @override
  @JsonKey(name: 'total_order_count')
  num? get totalOrderCount;
  @override
  @JsonKey(name: 'order_amount_last3months')
  num? get orderAmountLast3months;
  @override
  @JsonKey(name: 'order_count_last3months')
  num? get orderCountLast3months;
  @override
  @JsonKey(name: 'last_order_date')
  String? get lastOrderDate;
  @override
  @JsonKey(name: 'last_order_amount')
  num? get lastOrderAmount;
  @override
  @JsonKey(name: 'reward_program_enrolled')
  bool? get rewardProgramEnrolled;
  @override
  @JsonKey(name: 'reward_program_points')
  num? get rewardProgramPoints;

  /// Create a copy of RiskAssessment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RiskAssessmentImplCopyWith<_$RiskAssessmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
