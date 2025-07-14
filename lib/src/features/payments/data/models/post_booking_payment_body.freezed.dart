// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_booking_payment_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostBookingPaymentBody _$PostBookingPaymentBodyFromJson(
    Map<String, dynamic> json) {
  return _PostBookingPaymentBody.fromJson(json);
}

/// @nodoc
mixin _$PostBookingPaymentBody {
  @JsonKey(name: 'patientID')
  String? get patientId => throw _privateConstructorUsedError;
  @JsonKey(name: 'programID')
  String? get programId => throw _privateConstructorUsedError;
  @JsonKey(name: 'programVerID')
  String? get programVerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'bookingID')
  String? get bookingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'locationID')
  String? get locationID => throw _privateConstructorUsedError;
  String? get paymentRepId => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  bool? get isCash => throw _privateConstructorUsedError;
  String? get amount => throw _privateConstructorUsedError;
  String? get vatAmount => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;

  /// Serializes this PostBookingPaymentBody to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostBookingPaymentBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostBookingPaymentBodyCopyWith<PostBookingPaymentBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostBookingPaymentBodyCopyWith<$Res> {
  factory $PostBookingPaymentBodyCopyWith(PostBookingPaymentBody value,
          $Res Function(PostBookingPaymentBody) then) =
      _$PostBookingPaymentBodyCopyWithImpl<$Res, PostBookingPaymentBody>;
  @useResult
  $Res call(
      {@JsonKey(name: 'patientID') String? patientId,
      @JsonKey(name: 'programID') String? programId,
      @JsonKey(name: 'programVerID') String? programVerId,
      @JsonKey(name: 'bookingID') String? bookingId,
      @JsonKey(name: 'locationID') String? locationID,
      String? paymentRepId,
      bool? status,
      bool? isCash,
      String? amount,
      String? vatAmount,
      String? comment});
}

/// @nodoc
class _$PostBookingPaymentBodyCopyWithImpl<$Res,
        $Val extends PostBookingPaymentBody>
    implements $PostBookingPaymentBodyCopyWith<$Res> {
  _$PostBookingPaymentBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostBookingPaymentBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = freezed,
    Object? programId = freezed,
    Object? programVerId = freezed,
    Object? bookingId = freezed,
    Object? locationID = freezed,
    Object? paymentRepId = freezed,
    Object? status = freezed,
    Object? isCash = freezed,
    Object? amount = freezed,
    Object? vatAmount = freezed,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String?,
      programId: freezed == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as String?,
      programVerId: freezed == programVerId
          ? _value.programVerId
          : programVerId // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingId: freezed == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String?,
      locationID: freezed == locationID
          ? _value.locationID
          : locationID // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostBookingPaymentBodyImplCopyWith<$Res>
    implements $PostBookingPaymentBodyCopyWith<$Res> {
  factory _$$PostBookingPaymentBodyImplCopyWith(
          _$PostBookingPaymentBodyImpl value,
          $Res Function(_$PostBookingPaymentBodyImpl) then) =
      __$$PostBookingPaymentBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'patientID') String? patientId,
      @JsonKey(name: 'programID') String? programId,
      @JsonKey(name: 'programVerID') String? programVerId,
      @JsonKey(name: 'bookingID') String? bookingId,
      @JsonKey(name: 'locationID') String? locationID,
      String? paymentRepId,
      bool? status,
      bool? isCash,
      String? amount,
      String? vatAmount,
      String? comment});
}

/// @nodoc
class __$$PostBookingPaymentBodyImplCopyWithImpl<$Res>
    extends _$PostBookingPaymentBodyCopyWithImpl<$Res,
        _$PostBookingPaymentBodyImpl>
    implements _$$PostBookingPaymentBodyImplCopyWith<$Res> {
  __$$PostBookingPaymentBodyImplCopyWithImpl(
      _$PostBookingPaymentBodyImpl _value,
      $Res Function(_$PostBookingPaymentBodyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostBookingPaymentBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = freezed,
    Object? programId = freezed,
    Object? programVerId = freezed,
    Object? bookingId = freezed,
    Object? locationID = freezed,
    Object? paymentRepId = freezed,
    Object? status = freezed,
    Object? isCash = freezed,
    Object? amount = freezed,
    Object? vatAmount = freezed,
    Object? comment = freezed,
  }) {
    return _then(_$PostBookingPaymentBodyImpl(
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String?,
      programId: freezed == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as String?,
      programVerId: freezed == programVerId
          ? _value.programVerId
          : programVerId // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingId: freezed == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String?,
      locationID: freezed == locationID
          ? _value.locationID
          : locationID // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostBookingPaymentBodyImpl implements _PostBookingPaymentBody {
  _$PostBookingPaymentBodyImpl(
      {@JsonKey(name: 'patientID') this.patientId,
      @JsonKey(name: 'programID') this.programId,
      @JsonKey(name: 'programVerID') this.programVerId,
      @JsonKey(name: 'bookingID') this.bookingId,
      @JsonKey(name: 'locationID') this.locationID,
      this.paymentRepId,
      this.status,
      this.isCash,
      this.amount,
      this.vatAmount,
      this.comment});

  factory _$PostBookingPaymentBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostBookingPaymentBodyImplFromJson(json);

  @override
  @JsonKey(name: 'patientID')
  final String? patientId;
  @override
  @JsonKey(name: 'programID')
  final String? programId;
  @override
  @JsonKey(name: 'programVerID')
  final String? programVerId;
  @override
  @JsonKey(name: 'bookingID')
  final String? bookingId;
  @override
  @JsonKey(name: 'locationID')
  final String? locationID;
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
  String toString() {
    return 'PostBookingPaymentBody(patientId: $patientId, programId: $programId, programVerId: $programVerId, bookingId: $bookingId, locationID: $locationID, paymentRepId: $paymentRepId, status: $status, isCash: $isCash, amount: $amount, vatAmount: $vatAmount, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostBookingPaymentBodyImpl &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.programId, programId) ||
                other.programId == programId) &&
            (identical(other.programVerId, programVerId) ||
                other.programVerId == programVerId) &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.locationID, locationID) ||
                other.locationID == locationID) &&
            (identical(other.paymentRepId, paymentRepId) ||
                other.paymentRepId == paymentRepId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isCash, isCash) || other.isCash == isCash) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.vatAmount, vatAmount) ||
                other.vatAmount == vatAmount) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      patientId,
      programId,
      programVerId,
      bookingId,
      locationID,
      paymentRepId,
      status,
      isCash,
      amount,
      vatAmount,
      comment);

  /// Create a copy of PostBookingPaymentBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostBookingPaymentBodyImplCopyWith<_$PostBookingPaymentBodyImpl>
      get copyWith => __$$PostBookingPaymentBodyImplCopyWithImpl<
          _$PostBookingPaymentBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostBookingPaymentBodyImplToJson(
      this,
    );
  }
}

abstract class _PostBookingPaymentBody implements PostBookingPaymentBody {
  factory _PostBookingPaymentBody(
      {@JsonKey(name: 'patientID') final String? patientId,
      @JsonKey(name: 'programID') final String? programId,
      @JsonKey(name: 'programVerID') final String? programVerId,
      @JsonKey(name: 'bookingID') final String? bookingId,
      @JsonKey(name: 'locationID') final String? locationID,
      final String? paymentRepId,
      final bool? status,
      final bool? isCash,
      final String? amount,
      final String? vatAmount,
      final String? comment}) = _$PostBookingPaymentBodyImpl;

  factory _PostBookingPaymentBody.fromJson(Map<String, dynamic> json) =
      _$PostBookingPaymentBodyImpl.fromJson;

  @override
  @JsonKey(name: 'patientID')
  String? get patientId;
  @override
  @JsonKey(name: 'programID')
  String? get programId;
  @override
  @JsonKey(name: 'programVerID')
  String? get programVerId;
  @override
  @JsonKey(name: 'bookingID')
  String? get bookingId;
  @override
  @JsonKey(name: 'locationID')
  String? get locationID;
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

  /// Create a copy of PostBookingPaymentBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostBookingPaymentBodyImplCopyWith<_$PostBookingPaymentBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
