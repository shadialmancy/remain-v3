// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_datum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookingDatum _$BookingDatumFromJson(Map<String, dynamic> json) {
  return _BookingDatum.fromJson(json);
}

/// @nodoc
mixin _$BookingDatum {
  @JsonKey(name: 'patientID')
  String? get patientId =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'programID') String? programId,
// @JsonKey(name: 'programVerID') String? programVerId,
// @JsonKey(name: 'bookingID') String? bookingId,
  String? get paymentRepId => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  bool? get isCash => throw _privateConstructorUsedError;
  String? get amount => throw _privateConstructorUsedError;
  String? get vatAmount => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'locationID')
  String? get locationId => throw _privateConstructorUsedError;
  String? get paymentMethod => throw _privateConstructorUsedError;

  /// Serializes this BookingDatum to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookingDatum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingDatumCopyWith<BookingDatum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingDatumCopyWith<$Res> {
  factory $BookingDatumCopyWith(
          BookingDatum value, $Res Function(BookingDatum) then) =
      _$BookingDatumCopyWithImpl<$Res, BookingDatum>;
  @useResult
  $Res call(
      {@JsonKey(name: 'patientID') String? patientId,
      String? paymentRepId,
      bool? status,
      bool? isCash,
      String? amount,
      String? vatAmount,
      String? comment,
      @JsonKey(name: 'locationID') String? locationId,
      String? paymentMethod});
}

/// @nodoc
class _$BookingDatumCopyWithImpl<$Res, $Val extends BookingDatum>
    implements $BookingDatumCopyWith<$Res> {
  _$BookingDatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingDatum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = freezed,
    Object? paymentRepId = freezed,
    Object? status = freezed,
    Object? isCash = freezed,
    Object? amount = freezed,
    Object? vatAmount = freezed,
    Object? comment = freezed,
    Object? locationId = freezed,
    Object? paymentMethod = freezed,
  }) {
    return _then(_value.copyWith(
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentRepId: freezed == paymentRepId
          ? _value.paymentRepId
          : paymentRepId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCash: freezed == isCash
          ? _value.isCash
          : isCash // ignore: cast_nullable_to_non_nullable
              as bool?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      vatAmount: freezed == vatAmount
          ? _value.vatAmount
          : vatAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingDatumImplCopyWith<$Res>
    implements $BookingDatumCopyWith<$Res> {
  factory _$$BookingDatumImplCopyWith(
          _$BookingDatumImpl value, $Res Function(_$BookingDatumImpl) then) =
      __$$BookingDatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'patientID') String? patientId,
      String? paymentRepId,
      bool? status,
      bool? isCash,
      String? amount,
      String? vatAmount,
      String? comment,
      @JsonKey(name: 'locationID') String? locationId,
      String? paymentMethod});
}

/// @nodoc
class __$$BookingDatumImplCopyWithImpl<$Res>
    extends _$BookingDatumCopyWithImpl<$Res, _$BookingDatumImpl>
    implements _$$BookingDatumImplCopyWith<$Res> {
  __$$BookingDatumImplCopyWithImpl(
      _$BookingDatumImpl _value, $Res Function(_$BookingDatumImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingDatum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = freezed,
    Object? paymentRepId = freezed,
    Object? status = freezed,
    Object? isCash = freezed,
    Object? amount = freezed,
    Object? vatAmount = freezed,
    Object? comment = freezed,
    Object? locationId = freezed,
    Object? paymentMethod = freezed,
  }) {
    return _then(_$BookingDatumImpl(
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentRepId: freezed == paymentRepId
          ? _value.paymentRepId
          : paymentRepId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCash: freezed == isCash
          ? _value.isCash
          : isCash // ignore: cast_nullable_to_non_nullable
              as bool?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      vatAmount: freezed == vatAmount
          ? _value.vatAmount
          : vatAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingDatumImpl implements _BookingDatum {
  _$BookingDatumImpl(
      {@JsonKey(name: 'patientID') this.patientId,
      this.paymentRepId,
      this.status,
      this.isCash,
      this.amount,
      this.vatAmount,
      this.comment,
      @JsonKey(name: 'locationID') this.locationId,
      this.paymentMethod});

  factory _$BookingDatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingDatumImplFromJson(json);

  @override
  @JsonKey(name: 'patientID')
  final String? patientId;
// @JsonKey(name: 'programID') String? programId,
// @JsonKey(name: 'programVerID') String? programVerId,
// @JsonKey(name: 'bookingID') String? bookingId,
  @override
  final String? paymentRepId;
  @override
  final bool? status;
  @override
  final bool? isCash;
  @override
  final String? amount;
  @override
  final String? vatAmount;
  @override
  final String? comment;
  @override
  @JsonKey(name: 'locationID')
  final String? locationId;
  @override
  final String? paymentMethod;

  @override
  String toString() {
    return 'BookingDatum(patientId: $patientId, paymentRepId: $paymentRepId, status: $status, isCash: $isCash, amount: $amount, vatAmount: $vatAmount, comment: $comment, locationId: $locationId, paymentMethod: $paymentMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingDatumImpl &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.paymentRepId, paymentRepId) ||
                other.paymentRepId == paymentRepId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isCash, isCash) || other.isCash == isCash) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.vatAmount, vatAmount) ||
                other.vatAmount == vatAmount) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, patientId, paymentRepId, status,
      isCash, amount, vatAmount, comment, locationId, paymentMethod);

  /// Create a copy of BookingDatum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingDatumImplCopyWith<_$BookingDatumImpl> get copyWith =>
      __$$BookingDatumImplCopyWithImpl<_$BookingDatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingDatumImplToJson(
      this,
    );
  }
}

abstract class _BookingDatum implements BookingDatum {
  factory _BookingDatum(
      {@JsonKey(name: 'patientID') final String? patientId,
      final String? paymentRepId,
      final bool? status,
      final bool? isCash,
      final String? amount,
      final String? vatAmount,
      final String? comment,
      @JsonKey(name: 'locationID') final String? locationId,
      final String? paymentMethod}) = _$BookingDatumImpl;

  factory _BookingDatum.fromJson(Map<String, dynamic> json) =
      _$BookingDatumImpl.fromJson;

  @override
  @JsonKey(name: 'patientID')
  String? get patientId; // @JsonKey(name: 'programID') String? programId,
// @JsonKey(name: 'programVerID') String? programVerId,
// @JsonKey(name: 'bookingID') String? bookingId,
  @override
  String? get paymentRepId;
  @override
  bool? get status;
  @override
  bool? get isCash;
  @override
  String? get amount;
  @override
  String? get vatAmount;
  @override
  String? get comment;
  @override
  @JsonKey(name: 'locationID')
  String? get locationId;
  @override
  String? get paymentMethod;

  /// Create a copy of BookingDatum
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingDatumImplCopyWith<_$BookingDatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
