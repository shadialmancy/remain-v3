// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payments_due_datum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentsDueDatum _$PaymentsDueDatumFromJson(Map<String, dynamic> json) {
  return _PaymentsDueDatum.fromJson(json);
}

/// @nodoc
mixin _$PaymentsDueDatum {
  int? get orderId => throw _privateConstructorUsedError;
  String? get patientName => throw _privateConstructorUsedError;
  String? get doctorName => throw _privateConstructorUsedError;
  String? get respCenter => throw _privateConstructorUsedError;
  String? get payMethod => throw _privateConstructorUsedError;
  String? get isSaudi => throw _privateConstructorUsedError;
  String? get telephone => throw _privateConstructorUsedError;
  int? get fileNum => throw _privateConstructorUsedError;
  String? get transDate => throw _privateConstructorUsedError;
  String? get locationNmae => throw _privateConstructorUsedError;
  int? get totalAmount => throw _privateConstructorUsedError;
  int? get totalWitVatAmount => throw _privateConstructorUsedError;
  int? get vatAmount => throw _privateConstructorUsedError;
  List<Order>? get orders => throw _privateConstructorUsedError;

  /// Serializes this PaymentsDueDatum to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentsDueDatum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentsDueDatumCopyWith<PaymentsDueDatum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentsDueDatumCopyWith<$Res> {
  factory $PaymentsDueDatumCopyWith(
          PaymentsDueDatum value, $Res Function(PaymentsDueDatum) then) =
      _$PaymentsDueDatumCopyWithImpl<$Res, PaymentsDueDatum>;
  @useResult
  $Res call(
      {int? orderId,
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
      List<Order>? orders});
}

/// @nodoc
class _$PaymentsDueDatumCopyWithImpl<$Res, $Val extends PaymentsDueDatum>
    implements $PaymentsDueDatumCopyWith<$Res> {
  _$PaymentsDueDatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentsDueDatum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? patientName = freezed,
    Object? doctorName = freezed,
    Object? respCenter = freezed,
    Object? payMethod = freezed,
    Object? isSaudi = freezed,
    Object? telephone = freezed,
    Object? fileNum = freezed,
    Object? transDate = freezed,
    Object? locationNmae = freezed,
    Object? totalAmount = freezed,
    Object? totalWitVatAmount = freezed,
    Object? vatAmount = freezed,
    Object? orders = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      patientName: freezed == patientName
          ? _value.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorName: freezed == doctorName
          ? _value.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String?,
      respCenter: freezed == respCenter
          ? _value.respCenter
          : respCenter // ignore: cast_nullable_to_non_nullable
              as String?,
      payMethod: freezed == payMethod
          ? _value.payMethod
          : payMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      isSaudi: freezed == isSaudi
          ? _value.isSaudi
          : isSaudi // ignore: cast_nullable_to_non_nullable
              as String?,
      telephone: freezed == telephone
          ? _value.telephone
          : telephone // ignore: cast_nullable_to_non_nullable
              as String?,
      fileNum: freezed == fileNum
          ? _value.fileNum
          : fileNum // ignore: cast_nullable_to_non_nullable
              as int?,
      transDate: freezed == transDate
          ? _value.transDate
          : transDate // ignore: cast_nullable_to_non_nullable
              as String?,
      locationNmae: freezed == locationNmae
          ? _value.locationNmae
          : locationNmae // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalWitVatAmount: freezed == totalWitVatAmount
          ? _value.totalWitVatAmount
          : totalWitVatAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      vatAmount: freezed == vatAmount
          ? _value.vatAmount
          : vatAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      orders: freezed == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentsDueDatumImplCopyWith<$Res>
    implements $PaymentsDueDatumCopyWith<$Res> {
  factory _$$PaymentsDueDatumImplCopyWith(_$PaymentsDueDatumImpl value,
          $Res Function(_$PaymentsDueDatumImpl) then) =
      __$$PaymentsDueDatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? orderId,
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
      List<Order>? orders});
}

/// @nodoc
class __$$PaymentsDueDatumImplCopyWithImpl<$Res>
    extends _$PaymentsDueDatumCopyWithImpl<$Res, _$PaymentsDueDatumImpl>
    implements _$$PaymentsDueDatumImplCopyWith<$Res> {
  __$$PaymentsDueDatumImplCopyWithImpl(_$PaymentsDueDatumImpl _value,
      $Res Function(_$PaymentsDueDatumImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentsDueDatum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? patientName = freezed,
    Object? doctorName = freezed,
    Object? respCenter = freezed,
    Object? payMethod = freezed,
    Object? isSaudi = freezed,
    Object? telephone = freezed,
    Object? fileNum = freezed,
    Object? transDate = freezed,
    Object? locationNmae = freezed,
    Object? totalAmount = freezed,
    Object? totalWitVatAmount = freezed,
    Object? vatAmount = freezed,
    Object? orders = freezed,
  }) {
    return _then(_$PaymentsDueDatumImpl(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      patientName: freezed == patientName
          ? _value.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorName: freezed == doctorName
          ? _value.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String?,
      respCenter: freezed == respCenter
          ? _value.respCenter
          : respCenter // ignore: cast_nullable_to_non_nullable
              as String?,
      payMethod: freezed == payMethod
          ? _value.payMethod
          : payMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      isSaudi: freezed == isSaudi
          ? _value.isSaudi
          : isSaudi // ignore: cast_nullable_to_non_nullable
              as String?,
      telephone: freezed == telephone
          ? _value.telephone
          : telephone // ignore: cast_nullable_to_non_nullable
              as String?,
      fileNum: freezed == fileNum
          ? _value.fileNum
          : fileNum // ignore: cast_nullable_to_non_nullable
              as int?,
      transDate: freezed == transDate
          ? _value.transDate
          : transDate // ignore: cast_nullable_to_non_nullable
              as String?,
      locationNmae: freezed == locationNmae
          ? _value.locationNmae
          : locationNmae // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalWitVatAmount: freezed == totalWitVatAmount
          ? _value.totalWitVatAmount
          : totalWitVatAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      vatAmount: freezed == vatAmount
          ? _value.vatAmount
          : vatAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      orders: freezed == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentsDueDatumImpl implements _PaymentsDueDatum {
  _$PaymentsDueDatumImpl(
      {this.orderId,
      this.patientName,
      this.doctorName,
      this.respCenter,
      this.payMethod,
      this.isSaudi,
      this.telephone,
      this.fileNum,
      this.transDate,
      this.locationNmae,
      this.totalAmount,
      this.totalWitVatAmount,
      this.vatAmount,
      final List<Order>? orders})
      : _orders = orders;

  factory _$PaymentsDueDatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentsDueDatumImplFromJson(json);

  @override
  final int? orderId;
  @override
  final String? patientName;
  @override
  final String? doctorName;
  @override
  final String? respCenter;
  @override
  final String? payMethod;
  @override
  final String? isSaudi;
  @override
  final String? telephone;
  @override
  final int? fileNum;
  @override
  final String? transDate;
  @override
  final String? locationNmae;
  @override
  final int? totalAmount;
  @override
  final int? totalWitVatAmount;
  @override
  final int? vatAmount;
  final List<Order>? _orders;
  @override
  List<Order>? get orders {
    final value = _orders;
    if (value == null) return null;
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PaymentsDueDatum(orderId: $orderId, patientName: $patientName, doctorName: $doctorName, respCenter: $respCenter, payMethod: $payMethod, isSaudi: $isSaudi, telephone: $telephone, fileNum: $fileNum, transDate: $transDate, locationNmae: $locationNmae, totalAmount: $totalAmount, totalWitVatAmount: $totalWitVatAmount, vatAmount: $vatAmount, orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentsDueDatumImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.patientName, patientName) ||
                other.patientName == patientName) &&
            (identical(other.doctorName, doctorName) ||
                other.doctorName == doctorName) &&
            (identical(other.respCenter, respCenter) ||
                other.respCenter == respCenter) &&
            (identical(other.payMethod, payMethod) ||
                other.payMethod == payMethod) &&
            (identical(other.isSaudi, isSaudi) || other.isSaudi == isSaudi) &&
            (identical(other.telephone, telephone) ||
                other.telephone == telephone) &&
            (identical(other.fileNum, fileNum) || other.fileNum == fileNum) &&
            (identical(other.transDate, transDate) ||
                other.transDate == transDate) &&
            (identical(other.locationNmae, locationNmae) ||
                other.locationNmae == locationNmae) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.totalWitVatAmount, totalWitVatAmount) ||
                other.totalWitVatAmount == totalWitVatAmount) &&
            (identical(other.vatAmount, vatAmount) ||
                other.vatAmount == vatAmount) &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderId,
      patientName,
      doctorName,
      respCenter,
      payMethod,
      isSaudi,
      telephone,
      fileNum,
      transDate,
      locationNmae,
      totalAmount,
      totalWitVatAmount,
      vatAmount,
      const DeepCollectionEquality().hash(_orders));

  /// Create a copy of PaymentsDueDatum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentsDueDatumImplCopyWith<_$PaymentsDueDatumImpl> get copyWith =>
      __$$PaymentsDueDatumImplCopyWithImpl<_$PaymentsDueDatumImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentsDueDatumImplToJson(
      this,
    );
  }
}

abstract class _PaymentsDueDatum implements PaymentsDueDatum {
  factory _PaymentsDueDatum(
      {final int? orderId,
      final String? patientName,
      final String? doctorName,
      final String? respCenter,
      final String? payMethod,
      final String? isSaudi,
      final String? telephone,
      final int? fileNum,
      final String? transDate,
      final String? locationNmae,
      final int? totalAmount,
      final int? totalWitVatAmount,
      final int? vatAmount,
      final List<Order>? orders}) = _$PaymentsDueDatumImpl;

  factory _PaymentsDueDatum.fromJson(Map<String, dynamic> json) =
      _$PaymentsDueDatumImpl.fromJson;

  @override
  int? get orderId;
  @override
  String? get patientName;
  @override
  String? get doctorName;
  @override
  String? get respCenter;
  @override
  String? get payMethod;
  @override
  String? get isSaudi;
  @override
  String? get telephone;
  @override
  int? get fileNum;
  @override
  String? get transDate;
  @override
  String? get locationNmae;
  @override
  int? get totalAmount;
  @override
  int? get totalWitVatAmount;
  @override
  int? get vatAmount;
  @override
  List<Order>? get orders;

  /// Create a copy of PaymentsDueDatum
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentsDueDatumImplCopyWith<_$PaymentsDueDatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
