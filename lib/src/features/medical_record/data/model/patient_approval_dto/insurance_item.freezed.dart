// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'insurance_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InsuranceItem _$InsuranceItemFromJson(Map<String, dynamic> json) {
  return _InsuranceItem.fromJson(json);
}

/// @nodoc
mixin _$InsuranceItem {
  @JsonKey(name: 'PatEngName')
  String? get patEngName => throw _privateConstructorUsedError;
  @JsonKey(name: 'PatArbName')
  String? get patArbName => throw _privateConstructorUsedError;
  @JsonKey(name: 'DocEngName')
  String? get docEngName => throw _privateConstructorUsedError;
  @JsonKey(name: 'DocArbName')
  String? get docArbName => throw _privateConstructorUsedError;
  @JsonKey(name: 'ApprovalNum')
  String? get approvalNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'ServiceName')
  String? get serviceName => throw _privateConstructorUsedError;
  @JsonKey(name: 'ApprovalStatus')
  String? get approvalStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'Msg')
  String? get msg => throw _privateConstructorUsedError;
  @JsonKey(name: 'ApprovalExpiryDate')
  String? get approvalExpiryDate => throw _privateConstructorUsedError;

  /// Serializes this InsuranceItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InsuranceItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InsuranceItemCopyWith<InsuranceItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsuranceItemCopyWith<$Res> {
  factory $InsuranceItemCopyWith(
          InsuranceItem value, $Res Function(InsuranceItem) then) =
      _$InsuranceItemCopyWithImpl<$Res, InsuranceItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'PatEngName') String? patEngName,
      @JsonKey(name: 'PatArbName') String? patArbName,
      @JsonKey(name: 'DocEngName') String? docEngName,
      @JsonKey(name: 'DocArbName') String? docArbName,
      @JsonKey(name: 'ApprovalNum') String? approvalNum,
      @JsonKey(name: 'ServiceName') String? serviceName,
      @JsonKey(name: 'ApprovalStatus') String? approvalStatus,
      @JsonKey(name: 'Msg') String? msg,
      @JsonKey(name: 'ApprovalExpiryDate') String? approvalExpiryDate});
}

/// @nodoc
class _$InsuranceItemCopyWithImpl<$Res, $Val extends InsuranceItem>
    implements $InsuranceItemCopyWith<$Res> {
  _$InsuranceItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InsuranceItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patEngName = freezed,
    Object? patArbName = freezed,
    Object? docEngName = freezed,
    Object? docArbName = freezed,
    Object? approvalNum = freezed,
    Object? serviceName = freezed,
    Object? approvalStatus = freezed,
    Object? msg = freezed,
    Object? approvalExpiryDate = freezed,
  }) {
    return _then(_value.copyWith(
      patEngName: freezed == patEngName
          ? _value.patEngName
          : patEngName // ignore: cast_nullable_to_non_nullable
              as String?,
      patArbName: freezed == patArbName
          ? _value.patArbName
          : patArbName // ignore: cast_nullable_to_non_nullable
              as String?,
      docEngName: freezed == docEngName
          ? _value.docEngName
          : docEngName // ignore: cast_nullable_to_non_nullable
              as String?,
      docArbName: freezed == docArbName
          ? _value.docArbName
          : docArbName // ignore: cast_nullable_to_non_nullable
              as String?,
      approvalNum: freezed == approvalNum
          ? _value.approvalNum
          : approvalNum // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceName: freezed == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      approvalStatus: freezed == approvalStatus
          ? _value.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      approvalExpiryDate: freezed == approvalExpiryDate
          ? _value.approvalExpiryDate
          : approvalExpiryDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InsuranceItemImplCopyWith<$Res>
    implements $InsuranceItemCopyWith<$Res> {
  factory _$$InsuranceItemImplCopyWith(
          _$InsuranceItemImpl value, $Res Function(_$InsuranceItemImpl) then) =
      __$$InsuranceItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'PatEngName') String? patEngName,
      @JsonKey(name: 'PatArbName') String? patArbName,
      @JsonKey(name: 'DocEngName') String? docEngName,
      @JsonKey(name: 'DocArbName') String? docArbName,
      @JsonKey(name: 'ApprovalNum') String? approvalNum,
      @JsonKey(name: 'ServiceName') String? serviceName,
      @JsonKey(name: 'ApprovalStatus') String? approvalStatus,
      @JsonKey(name: 'Msg') String? msg,
      @JsonKey(name: 'ApprovalExpiryDate') String? approvalExpiryDate});
}

/// @nodoc
class __$$InsuranceItemImplCopyWithImpl<$Res>
    extends _$InsuranceItemCopyWithImpl<$Res, _$InsuranceItemImpl>
    implements _$$InsuranceItemImplCopyWith<$Res> {
  __$$InsuranceItemImplCopyWithImpl(
      _$InsuranceItemImpl _value, $Res Function(_$InsuranceItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of InsuranceItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patEngName = freezed,
    Object? patArbName = freezed,
    Object? docEngName = freezed,
    Object? docArbName = freezed,
    Object? approvalNum = freezed,
    Object? serviceName = freezed,
    Object? approvalStatus = freezed,
    Object? msg = freezed,
    Object? approvalExpiryDate = freezed,
  }) {
    return _then(_$InsuranceItemImpl(
      patEngName: freezed == patEngName
          ? _value.patEngName
          : patEngName // ignore: cast_nullable_to_non_nullable
              as String?,
      patArbName: freezed == patArbName
          ? _value.patArbName
          : patArbName // ignore: cast_nullable_to_non_nullable
              as String?,
      docEngName: freezed == docEngName
          ? _value.docEngName
          : docEngName // ignore: cast_nullable_to_non_nullable
              as String?,
      docArbName: freezed == docArbName
          ? _value.docArbName
          : docArbName // ignore: cast_nullable_to_non_nullable
              as String?,
      approvalNum: freezed == approvalNum
          ? _value.approvalNum
          : approvalNum // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceName: freezed == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      approvalStatus: freezed == approvalStatus
          ? _value.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      approvalExpiryDate: freezed == approvalExpiryDate
          ? _value.approvalExpiryDate
          : approvalExpiryDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InsuranceItemImpl implements _InsuranceItem {
  _$InsuranceItemImpl(
      {@JsonKey(name: 'PatEngName') this.patEngName,
      @JsonKey(name: 'PatArbName') this.patArbName,
      @JsonKey(name: 'DocEngName') this.docEngName,
      @JsonKey(name: 'DocArbName') this.docArbName,
      @JsonKey(name: 'ApprovalNum') this.approvalNum,
      @JsonKey(name: 'ServiceName') this.serviceName,
      @JsonKey(name: 'ApprovalStatus') this.approvalStatus,
      @JsonKey(name: 'Msg') this.msg,
      @JsonKey(name: 'ApprovalExpiryDate') this.approvalExpiryDate});

  factory _$InsuranceItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$InsuranceItemImplFromJson(json);

  @override
  @JsonKey(name: 'PatEngName')
  final String? patEngName;
  @override
  @JsonKey(name: 'PatArbName')
  final String? patArbName;
  @override
  @JsonKey(name: 'DocEngName')
  final String? docEngName;
  @override
  @JsonKey(name: 'DocArbName')
  final String? docArbName;
  @override
  @JsonKey(name: 'ApprovalNum')
  final String? approvalNum;
  @override
  @JsonKey(name: 'ServiceName')
  final String? serviceName;
  @override
  @JsonKey(name: 'ApprovalStatus')
  final String? approvalStatus;
  @override
  @JsonKey(name: 'Msg')
  final String? msg;
  @override
  @JsonKey(name: 'ApprovalExpiryDate')
  final String? approvalExpiryDate;

  @override
  String toString() {
    return 'InsuranceItem(patEngName: $patEngName, patArbName: $patArbName, docEngName: $docEngName, docArbName: $docArbName, approvalNum: $approvalNum, serviceName: $serviceName, approvalStatus: $approvalStatus, msg: $msg, approvalExpiryDate: $approvalExpiryDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsuranceItemImpl &&
            (identical(other.patEngName, patEngName) ||
                other.patEngName == patEngName) &&
            (identical(other.patArbName, patArbName) ||
                other.patArbName == patArbName) &&
            (identical(other.docEngName, docEngName) ||
                other.docEngName == docEngName) &&
            (identical(other.docArbName, docArbName) ||
                other.docArbName == docArbName) &&
            (identical(other.approvalNum, approvalNum) ||
                other.approvalNum == approvalNum) &&
            (identical(other.serviceName, serviceName) ||
                other.serviceName == serviceName) &&
            (identical(other.approvalStatus, approvalStatus) ||
                other.approvalStatus == approvalStatus) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.approvalExpiryDate, approvalExpiryDate) ||
                other.approvalExpiryDate == approvalExpiryDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      patEngName,
      patArbName,
      docEngName,
      docArbName,
      approvalNum,
      serviceName,
      approvalStatus,
      msg,
      approvalExpiryDate);

  /// Create a copy of InsuranceItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InsuranceItemImplCopyWith<_$InsuranceItemImpl> get copyWith =>
      __$$InsuranceItemImplCopyWithImpl<_$InsuranceItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InsuranceItemImplToJson(
      this,
    );
  }
}

abstract class _InsuranceItem implements InsuranceItem {
  factory _InsuranceItem(
      {@JsonKey(name: 'PatEngName') final String? patEngName,
      @JsonKey(name: 'PatArbName') final String? patArbName,
      @JsonKey(name: 'DocEngName') final String? docEngName,
      @JsonKey(name: 'DocArbName') final String? docArbName,
      @JsonKey(name: 'ApprovalNum') final String? approvalNum,
      @JsonKey(name: 'ServiceName') final String? serviceName,
      @JsonKey(name: 'ApprovalStatus') final String? approvalStatus,
      @JsonKey(name: 'Msg') final String? msg,
      @JsonKey(name: 'ApprovalExpiryDate')
      final String? approvalExpiryDate}) = _$InsuranceItemImpl;

  factory _InsuranceItem.fromJson(Map<String, dynamic> json) =
      _$InsuranceItemImpl.fromJson;

  @override
  @JsonKey(name: 'PatEngName')
  String? get patEngName;
  @override
  @JsonKey(name: 'PatArbName')
  String? get patArbName;
  @override
  @JsonKey(name: 'DocEngName')
  String? get docEngName;
  @override
  @JsonKey(name: 'DocArbName')
  String? get docArbName;
  @override
  @JsonKey(name: 'ApprovalNum')
  String? get approvalNum;
  @override
  @JsonKey(name: 'ServiceName')
  String? get serviceName;
  @override
  @JsonKey(name: 'ApprovalStatus')
  String? get approvalStatus;
  @override
  @JsonKey(name: 'Msg')
  String? get msg;
  @override
  @JsonKey(name: 'ApprovalExpiryDate')
  String? get approvalExpiryDate;

  /// Create a copy of InsuranceItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InsuranceItemImplCopyWith<_$InsuranceItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
