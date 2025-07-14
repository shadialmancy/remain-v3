// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tamara_payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TamaraPayment _$TamaraPaymentFromJson(Map<String, dynamic> json) {
  return _TamaraPayment.fromJson(json);
}

/// @nodoc
mixin _$TamaraPayment {
  @JsonKey(name: 'total_amount')
  TotalAmount? get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_amount')
  ShippingAmount? get shippingAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax_amount')
  TaxAmount? get taxAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_reference_id')
  String? get orderReferenceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_number')
  String? get orderNumber => throw _privateConstructorUsedError;
  Discount? get discount => throw _privateConstructorUsedError;
  List<Item>? get items => throw _privateConstructorUsedError;
  Consumer? get consumer => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_code')
  String? get countryCode => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'merchant_url')
  MerchantUrl? get merchantUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_type')
  String? get paymentType => throw _privateConstructorUsedError;
  num? get instalments => throw _privateConstructorUsedError;
  @JsonKey(name: 'billing_address')
  BillingAddress? get billingAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_address')
  ShippingAddress? get shippingAddress => throw _privateConstructorUsedError;
  String? get platform => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_mobile')
  bool? get isMobile => throw _privateConstructorUsedError;
  String? get locale => throw _privateConstructorUsedError;
  @JsonKey(name: 'risk_assessment')
  RiskAssessment? get riskAssessment => throw _privateConstructorUsedError;
  @JsonKey(name: 'additional_data')
  AdditionalData? get additionalData => throw _privateConstructorUsedError;

  /// Serializes this TamaraPayment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TamaraPayment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TamaraPaymentCopyWith<TamaraPayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TamaraPaymentCopyWith<$Res> {
  factory $TamaraPaymentCopyWith(
          TamaraPayment value, $Res Function(TamaraPayment) then) =
      _$TamaraPaymentCopyWithImpl<$Res, TamaraPayment>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_amount') TotalAmount? totalAmount,
      @JsonKey(name: 'shipping_amount') ShippingAmount? shippingAmount,
      @JsonKey(name: 'tax_amount') TaxAmount? taxAmount,
      @JsonKey(name: 'order_reference_id') String? orderReferenceId,
      @JsonKey(name: 'order_number') String? orderNumber,
      Discount? discount,
      List<Item>? items,
      Consumer? consumer,
      @JsonKey(name: 'country_code') String? countryCode,
      String? description,
      @JsonKey(name: 'merchant_url') MerchantUrl? merchantUrl,
      @JsonKey(name: 'payment_type') String? paymentType,
      num? instalments,
      @JsonKey(name: 'billing_address') BillingAddress? billingAddress,
      @JsonKey(name: 'shipping_address') ShippingAddress? shippingAddress,
      String? platform,
      @JsonKey(name: 'is_mobile') bool? isMobile,
      String? locale,
      @JsonKey(name: 'risk_assessment') RiskAssessment? riskAssessment,
      @JsonKey(name: 'additional_data') AdditionalData? additionalData});

  $TotalAmountCopyWith<$Res>? get totalAmount;
  $ShippingAmountCopyWith<$Res>? get shippingAmount;
  $TaxAmountCopyWith<$Res>? get taxAmount;
  $DiscountCopyWith<$Res>? get discount;
  $ConsumerCopyWith<$Res>? get consumer;
  $MerchantUrlCopyWith<$Res>? get merchantUrl;
  $BillingAddressCopyWith<$Res>? get billingAddress;
  $ShippingAddressCopyWith<$Res>? get shippingAddress;
  $RiskAssessmentCopyWith<$Res>? get riskAssessment;
  $AdditionalDataCopyWith<$Res>? get additionalData;
}

/// @nodoc
class _$TamaraPaymentCopyWithImpl<$Res, $Val extends TamaraPayment>
    implements $TamaraPaymentCopyWith<$Res> {
  _$TamaraPaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TamaraPayment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalAmount = freezed,
    Object? shippingAmount = freezed,
    Object? taxAmount = freezed,
    Object? orderReferenceId = freezed,
    Object? orderNumber = freezed,
    Object? discount = freezed,
    Object? items = freezed,
    Object? consumer = freezed,
    Object? countryCode = freezed,
    Object? description = freezed,
    Object? merchantUrl = freezed,
    Object? paymentType = freezed,
    Object? instalments = freezed,
    Object? billingAddress = freezed,
    Object? shippingAddress = freezed,
    Object? platform = freezed,
    Object? isMobile = freezed,
    Object? locale = freezed,
    Object? riskAssessment = freezed,
    Object? additionalData = freezed,
  }) {
    return _then(_value.copyWith(
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as TotalAmount?,
      shippingAmount: freezed == shippingAmount
          ? _value.shippingAmount
          : shippingAmount // ignore: cast_nullable_to_non_nullable
              as ShippingAmount?,
      taxAmount: freezed == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as TaxAmount?,
      orderReferenceId: freezed == orderReferenceId
          ? _value.orderReferenceId
          : orderReferenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as Discount?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
      consumer: freezed == consumer
          ? _value.consumer
          : consumer // ignore: cast_nullable_to_non_nullable
              as Consumer?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantUrl: freezed == merchantUrl
          ? _value.merchantUrl
          : merchantUrl // ignore: cast_nullable_to_non_nullable
              as MerchantUrl?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      instalments: freezed == instalments
          ? _value.instalments
          : instalments // ignore: cast_nullable_to_non_nullable
              as num?,
      billingAddress: freezed == billingAddress
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as BillingAddress?,
      shippingAddress: freezed == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as ShippingAddress?,
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
      isMobile: freezed == isMobile
          ? _value.isMobile
          : isMobile // ignore: cast_nullable_to_non_nullable
              as bool?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
      riskAssessment: freezed == riskAssessment
          ? _value.riskAssessment
          : riskAssessment // ignore: cast_nullable_to_non_nullable
              as RiskAssessment?,
      additionalData: freezed == additionalData
          ? _value.additionalData
          : additionalData // ignore: cast_nullable_to_non_nullable
              as AdditionalData?,
    ) as $Val);
  }

  /// Create a copy of TamaraPayment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TotalAmountCopyWith<$Res>? get totalAmount {
    if (_value.totalAmount == null) {
      return null;
    }

    return $TotalAmountCopyWith<$Res>(_value.totalAmount!, (value) {
      return _then(_value.copyWith(totalAmount: value) as $Val);
    });
  }

  /// Create a copy of TamaraPayment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShippingAmountCopyWith<$Res>? get shippingAmount {
    if (_value.shippingAmount == null) {
      return null;
    }

    return $ShippingAmountCopyWith<$Res>(_value.shippingAmount!, (value) {
      return _then(_value.copyWith(shippingAmount: value) as $Val);
    });
  }

  /// Create a copy of TamaraPayment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaxAmountCopyWith<$Res>? get taxAmount {
    if (_value.taxAmount == null) {
      return null;
    }

    return $TaxAmountCopyWith<$Res>(_value.taxAmount!, (value) {
      return _then(_value.copyWith(taxAmount: value) as $Val);
    });
  }

  /// Create a copy of TamaraPayment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DiscountCopyWith<$Res>? get discount {
    if (_value.discount == null) {
      return null;
    }

    return $DiscountCopyWith<$Res>(_value.discount!, (value) {
      return _then(_value.copyWith(discount: value) as $Val);
    });
  }

  /// Create a copy of TamaraPayment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsumerCopyWith<$Res>? get consumer {
    if (_value.consumer == null) {
      return null;
    }

    return $ConsumerCopyWith<$Res>(_value.consumer!, (value) {
      return _then(_value.copyWith(consumer: value) as $Val);
    });
  }

  /// Create a copy of TamaraPayment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MerchantUrlCopyWith<$Res>? get merchantUrl {
    if (_value.merchantUrl == null) {
      return null;
    }

    return $MerchantUrlCopyWith<$Res>(_value.merchantUrl!, (value) {
      return _then(_value.copyWith(merchantUrl: value) as $Val);
    });
  }

  /// Create a copy of TamaraPayment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BillingAddressCopyWith<$Res>? get billingAddress {
    if (_value.billingAddress == null) {
      return null;
    }

    return $BillingAddressCopyWith<$Res>(_value.billingAddress!, (value) {
      return _then(_value.copyWith(billingAddress: value) as $Val);
    });
  }

  /// Create a copy of TamaraPayment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShippingAddressCopyWith<$Res>? get shippingAddress {
    if (_value.shippingAddress == null) {
      return null;
    }

    return $ShippingAddressCopyWith<$Res>(_value.shippingAddress!, (value) {
      return _then(_value.copyWith(shippingAddress: value) as $Val);
    });
  }

  /// Create a copy of TamaraPayment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RiskAssessmentCopyWith<$Res>? get riskAssessment {
    if (_value.riskAssessment == null) {
      return null;
    }

    return $RiskAssessmentCopyWith<$Res>(_value.riskAssessment!, (value) {
      return _then(_value.copyWith(riskAssessment: value) as $Val);
    });
  }

  /// Create a copy of TamaraPayment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdditionalDataCopyWith<$Res>? get additionalData {
    if (_value.additionalData == null) {
      return null;
    }

    return $AdditionalDataCopyWith<$Res>(_value.additionalData!, (value) {
      return _then(_value.copyWith(additionalData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TamaraPaymentImplCopyWith<$Res>
    implements $TamaraPaymentCopyWith<$Res> {
  factory _$$TamaraPaymentImplCopyWith(
          _$TamaraPaymentImpl value, $Res Function(_$TamaraPaymentImpl) then) =
      __$$TamaraPaymentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_amount') TotalAmount? totalAmount,
      @JsonKey(name: 'shipping_amount') ShippingAmount? shippingAmount,
      @JsonKey(name: 'tax_amount') TaxAmount? taxAmount,
      @JsonKey(name: 'order_reference_id') String? orderReferenceId,
      @JsonKey(name: 'order_number') String? orderNumber,
      Discount? discount,
      List<Item>? items,
      Consumer? consumer,
      @JsonKey(name: 'country_code') String? countryCode,
      String? description,
      @JsonKey(name: 'merchant_url') MerchantUrl? merchantUrl,
      @JsonKey(name: 'payment_type') String? paymentType,
      num? instalments,
      @JsonKey(name: 'billing_address') BillingAddress? billingAddress,
      @JsonKey(name: 'shipping_address') ShippingAddress? shippingAddress,
      String? platform,
      @JsonKey(name: 'is_mobile') bool? isMobile,
      String? locale,
      @JsonKey(name: 'risk_assessment') RiskAssessment? riskAssessment,
      @JsonKey(name: 'additional_data') AdditionalData? additionalData});

  @override
  $TotalAmountCopyWith<$Res>? get totalAmount;
  @override
  $ShippingAmountCopyWith<$Res>? get shippingAmount;
  @override
  $TaxAmountCopyWith<$Res>? get taxAmount;
  @override
  $DiscountCopyWith<$Res>? get discount;
  @override
  $ConsumerCopyWith<$Res>? get consumer;
  @override
  $MerchantUrlCopyWith<$Res>? get merchantUrl;
  @override
  $BillingAddressCopyWith<$Res>? get billingAddress;
  @override
  $ShippingAddressCopyWith<$Res>? get shippingAddress;
  @override
  $RiskAssessmentCopyWith<$Res>? get riskAssessment;
  @override
  $AdditionalDataCopyWith<$Res>? get additionalData;
}

/// @nodoc
class __$$TamaraPaymentImplCopyWithImpl<$Res>
    extends _$TamaraPaymentCopyWithImpl<$Res, _$TamaraPaymentImpl>
    implements _$$TamaraPaymentImplCopyWith<$Res> {
  __$$TamaraPaymentImplCopyWithImpl(
      _$TamaraPaymentImpl _value, $Res Function(_$TamaraPaymentImpl) _then)
      : super(_value, _then);

  /// Create a copy of TamaraPayment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalAmount = freezed,
    Object? shippingAmount = freezed,
    Object? taxAmount = freezed,
    Object? orderReferenceId = freezed,
    Object? orderNumber = freezed,
    Object? discount = freezed,
    Object? items = freezed,
    Object? consumer = freezed,
    Object? countryCode = freezed,
    Object? description = freezed,
    Object? merchantUrl = freezed,
    Object? paymentType = freezed,
    Object? instalments = freezed,
    Object? billingAddress = freezed,
    Object? shippingAddress = freezed,
    Object? platform = freezed,
    Object? isMobile = freezed,
    Object? locale = freezed,
    Object? riskAssessment = freezed,
    Object? additionalData = freezed,
  }) {
    return _then(_$TamaraPaymentImpl(
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as TotalAmount?,
      shippingAmount: freezed == shippingAmount
          ? _value.shippingAmount
          : shippingAmount // ignore: cast_nullable_to_non_nullable
              as ShippingAmount?,
      taxAmount: freezed == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as TaxAmount?,
      orderReferenceId: freezed == orderReferenceId
          ? _value.orderReferenceId
          : orderReferenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as Discount?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
      consumer: freezed == consumer
          ? _value.consumer
          : consumer // ignore: cast_nullable_to_non_nullable
              as Consumer?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantUrl: freezed == merchantUrl
          ? _value.merchantUrl
          : merchantUrl // ignore: cast_nullable_to_non_nullable
              as MerchantUrl?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      instalments: freezed == instalments
          ? _value.instalments
          : instalments // ignore: cast_nullable_to_non_nullable
              as num?,
      billingAddress: freezed == billingAddress
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as BillingAddress?,
      shippingAddress: freezed == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as ShippingAddress?,
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
      isMobile: freezed == isMobile
          ? _value.isMobile
          : isMobile // ignore: cast_nullable_to_non_nullable
              as bool?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
      riskAssessment: freezed == riskAssessment
          ? _value.riskAssessment
          : riskAssessment // ignore: cast_nullable_to_non_nullable
              as RiskAssessment?,
      additionalData: freezed == additionalData
          ? _value.additionalData
          : additionalData // ignore: cast_nullable_to_non_nullable
              as AdditionalData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TamaraPaymentImpl implements _TamaraPayment {
  _$TamaraPaymentImpl(
      {@JsonKey(name: 'total_amount') this.totalAmount,
      @JsonKey(name: 'shipping_amount') this.shippingAmount,
      @JsonKey(name: 'tax_amount') this.taxAmount,
      @JsonKey(name: 'order_reference_id') this.orderReferenceId,
      @JsonKey(name: 'order_number') this.orderNumber,
      this.discount,
      final List<Item>? items,
      this.consumer,
      @JsonKey(name: 'country_code') this.countryCode,
      this.description,
      @JsonKey(name: 'merchant_url') this.merchantUrl,
      @JsonKey(name: 'payment_type') this.paymentType,
      this.instalments,
      @JsonKey(name: 'billing_address') this.billingAddress,
      @JsonKey(name: 'shipping_address') this.shippingAddress,
      this.platform,
      @JsonKey(name: 'is_mobile') this.isMobile,
      this.locale,
      @JsonKey(name: 'risk_assessment') this.riskAssessment,
      @JsonKey(name: 'additional_data') this.additionalData})
      : _items = items;

  factory _$TamaraPaymentImpl.fromJson(Map<String, dynamic> json) =>
      _$$TamaraPaymentImplFromJson(json);

  @override
  @JsonKey(name: 'total_amount')
  final TotalAmount? totalAmount;
  @override
  @JsonKey(name: 'shipping_amount')
  final ShippingAmount? shippingAmount;
  @override
  @JsonKey(name: 'tax_amount')
  final TaxAmount? taxAmount;
  @override
  @JsonKey(name: 'order_reference_id')
  final String? orderReferenceId;
  @override
  @JsonKey(name: 'order_number')
  final String? orderNumber;
  @override
  final Discount? discount;
  final List<Item>? _items;
  @override
  List<Item>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Consumer? consumer;
  @override
  @JsonKey(name: 'country_code')
  final String? countryCode;
  @override
  final String? description;
  @override
  @JsonKey(name: 'merchant_url')
  final MerchantUrl? merchantUrl;
  @override
  @JsonKey(name: 'payment_type')
  final String? paymentType;
  @override
  final num? instalments;
  @override
  @JsonKey(name: 'billing_address')
  final BillingAddress? billingAddress;
  @override
  @JsonKey(name: 'shipping_address')
  final ShippingAddress? shippingAddress;
  @override
  final String? platform;
  @override
  @JsonKey(name: 'is_mobile')
  final bool? isMobile;
  @override
  final String? locale;
  @override
  @JsonKey(name: 'risk_assessment')
  final RiskAssessment? riskAssessment;
  @override
  @JsonKey(name: 'additional_data')
  final AdditionalData? additionalData;

  @override
  String toString() {
    return 'TamaraPayment(totalAmount: $totalAmount, shippingAmount: $shippingAmount, taxAmount: $taxAmount, orderReferenceId: $orderReferenceId, orderNumber: $orderNumber, discount: $discount, items: $items, consumer: $consumer, countryCode: $countryCode, description: $description, merchantUrl: $merchantUrl, paymentType: $paymentType, instalments: $instalments, billingAddress: $billingAddress, shippingAddress: $shippingAddress, platform: $platform, isMobile: $isMobile, locale: $locale, riskAssessment: $riskAssessment, additionalData: $additionalData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TamaraPaymentImpl &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.shippingAmount, shippingAmount) ||
                other.shippingAmount == shippingAmount) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.orderReferenceId, orderReferenceId) ||
                other.orderReferenceId == orderReferenceId) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.consumer, consumer) ||
                other.consumer == consumer) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.merchantUrl, merchantUrl) ||
                other.merchantUrl == merchantUrl) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.instalments, instalments) ||
                other.instalments == instalments) &&
            (identical(other.billingAddress, billingAddress) ||
                other.billingAddress == billingAddress) &&
            (identical(other.shippingAddress, shippingAddress) ||
                other.shippingAddress == shippingAddress) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.isMobile, isMobile) ||
                other.isMobile == isMobile) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.riskAssessment, riskAssessment) ||
                other.riskAssessment == riskAssessment) &&
            (identical(other.additionalData, additionalData) ||
                other.additionalData == additionalData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        totalAmount,
        shippingAmount,
        taxAmount,
        orderReferenceId,
        orderNumber,
        discount,
        const DeepCollectionEquality().hash(_items),
        consumer,
        countryCode,
        description,
        merchantUrl,
        paymentType,
        instalments,
        billingAddress,
        shippingAddress,
        platform,
        isMobile,
        locale,
        riskAssessment,
        additionalData
      ]);

  /// Create a copy of TamaraPayment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TamaraPaymentImplCopyWith<_$TamaraPaymentImpl> get copyWith =>
      __$$TamaraPaymentImplCopyWithImpl<_$TamaraPaymentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TamaraPaymentImplToJson(
      this,
    );
  }
}

abstract class _TamaraPayment implements TamaraPayment {
  factory _TamaraPayment(
      {@JsonKey(name: 'total_amount') final TotalAmount? totalAmount,
      @JsonKey(name: 'shipping_amount') final ShippingAmount? shippingAmount,
      @JsonKey(name: 'tax_amount') final TaxAmount? taxAmount,
      @JsonKey(name: 'order_reference_id') final String? orderReferenceId,
      @JsonKey(name: 'order_number') final String? orderNumber,
      final Discount? discount,
      final List<Item>? items,
      final Consumer? consumer,
      @JsonKey(name: 'country_code') final String? countryCode,
      final String? description,
      @JsonKey(name: 'merchant_url') final MerchantUrl? merchantUrl,
      @JsonKey(name: 'payment_type') final String? paymentType,
      final num? instalments,
      @JsonKey(name: 'billing_address') final BillingAddress? billingAddress,
      @JsonKey(name: 'shipping_address') final ShippingAddress? shippingAddress,
      final String? platform,
      @JsonKey(name: 'is_mobile') final bool? isMobile,
      final String? locale,
      @JsonKey(name: 'risk_assessment') final RiskAssessment? riskAssessment,
      @JsonKey(name: 'additional_data')
      final AdditionalData? additionalData}) = _$TamaraPaymentImpl;

  factory _TamaraPayment.fromJson(Map<String, dynamic> json) =
      _$TamaraPaymentImpl.fromJson;

  @override
  @JsonKey(name: 'total_amount')
  TotalAmount? get totalAmount;
  @override
  @JsonKey(name: 'shipping_amount')
  ShippingAmount? get shippingAmount;
  @override
  @JsonKey(name: 'tax_amount')
  TaxAmount? get taxAmount;
  @override
  @JsonKey(name: 'order_reference_id')
  String? get orderReferenceId;
  @override
  @JsonKey(name: 'order_number')
  String? get orderNumber;
  @override
  Discount? get discount;
  @override
  List<Item>? get items;
  @override
  Consumer? get consumer;
  @override
  @JsonKey(name: 'country_code')
  String? get countryCode;
  @override
  String? get description;
  @override
  @JsonKey(name: 'merchant_url')
  MerchantUrl? get merchantUrl;
  @override
  @JsonKey(name: 'payment_type')
  String? get paymentType;
  @override
  num? get instalments;
  @override
  @JsonKey(name: 'billing_address')
  BillingAddress? get billingAddress;
  @override
  @JsonKey(name: 'shipping_address')
  ShippingAddress? get shippingAddress;
  @override
  String? get platform;
  @override
  @JsonKey(name: 'is_mobile')
  bool? get isMobile;
  @override
  String? get locale;
  @override
  @JsonKey(name: 'risk_assessment')
  RiskAssessment? get riskAssessment;
  @override
  @JsonKey(name: 'additional_data')
  AdditionalData? get additionalData;

  /// Create a copy of TamaraPayment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TamaraPaymentImplCopyWith<_$TamaraPaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
