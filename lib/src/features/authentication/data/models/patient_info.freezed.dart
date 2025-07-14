// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PatientInfo _$PatientInfoFromJson(Map<String, dynamic> json) {
  return _PatientInfo.fromJson(json);
}

/// @nodoc
mixin _$PatientInfo {
  @HiveField(0)
  @JsonKey(name: 'ID')
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'FileNum')
  int? get fileNum => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'Telephones')
  String? get telephones => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'IdentityNo')
  String? get identityNo => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'Sex')
  String? get sex => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'DOB')
  String? get dob => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: 'ArbName')
  String? get arbName => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: 'EngName')
  String? get engName => throw _privateConstructorUsedError;
  @HiveField(8)
  @JsonKey(name: 'AccountID')
  int? get accountId => throw _privateConstructorUsedError;
  @HiveField(9)
  @JsonKey(name: 'IsInsurance')
  bool? get isInsurance => throw _privateConstructorUsedError;
  @HiveField(10)
  @JsonKey(name: 'RandCode')
  String? get randCode => throw _privateConstructorUsedError;
  @HiveField(11)
  @JsonKey(name: 'MaritalStatus')
  String? get maritalStatus => throw _privateConstructorUsedError;
  @HiveField(12)
  @JsonKey(name: 'Age')
  int? get age => throw _privateConstructorUsedError;
  @HiveField(13)
  @JsonKey(name: 'Address')
  String? get address => throw _privateConstructorUsedError;
  @HiveField(14)
  @JsonKey(name: 'Email')
  String? get email => throw _privateConstructorUsedError;
  @HiveField(15)
  @JsonKey(name: 'IsValid')
  bool? get isValid => throw _privateConstructorUsedError;
  @HiveField(16)
  @JsonKey(name: 'VitalSigns')
  VitalSigns? get vitalSigns => throw _privateConstructorUsedError;
  @HiveField(17)
  @JsonKey(name: 'PatAllergies')
  dynamic get patAllergies => throw _privateConstructorUsedError;
  @HiveField(18)
  @JsonKey(name: 'PatRel')
  List<PatRel>? get patRel => throw _privateConstructorUsedError;

  /// Serializes this PatientInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PatientInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatientInfoCopyWith<PatientInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientInfoCopyWith<$Res> {
  factory $PatientInfoCopyWith(
          PatientInfo value, $Res Function(PatientInfo) then) =
      _$PatientInfoCopyWithImpl<$Res, PatientInfo>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'ID') int? id,
      @HiveField(1) @JsonKey(name: 'FileNum') int? fileNum,
      @HiveField(2) @JsonKey(name: 'Telephones') String? telephones,
      @HiveField(3) @JsonKey(name: 'IdentityNo') String? identityNo,
      @HiveField(4) @JsonKey(name: 'Sex') String? sex,
      @HiveField(5) @JsonKey(name: 'DOB') String? dob,
      @HiveField(6) @JsonKey(name: 'ArbName') String? arbName,
      @HiveField(7) @JsonKey(name: 'EngName') String? engName,
      @HiveField(8) @JsonKey(name: 'AccountID') int? accountId,
      @HiveField(9) @JsonKey(name: 'IsInsurance') bool? isInsurance,
      @HiveField(10) @JsonKey(name: 'RandCode') String? randCode,
      @HiveField(11) @JsonKey(name: 'MaritalStatus') String? maritalStatus,
      @HiveField(12) @JsonKey(name: 'Age') int? age,
      @HiveField(13) @JsonKey(name: 'Address') String? address,
      @HiveField(14) @JsonKey(name: 'Email') String? email,
      @HiveField(15) @JsonKey(name: 'IsValid') bool? isValid,
      @HiveField(16) @JsonKey(name: 'VitalSigns') VitalSigns? vitalSigns,
      @HiveField(17) @JsonKey(name: 'PatAllergies') dynamic patAllergies,
      @HiveField(18) @JsonKey(name: 'PatRel') List<PatRel>? patRel});

  $VitalSignsCopyWith<$Res>? get vitalSigns;
}

/// @nodoc
class _$PatientInfoCopyWithImpl<$Res, $Val extends PatientInfo>
    implements $PatientInfoCopyWith<$Res> {
  _$PatientInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatientInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fileNum = freezed,
    Object? telephones = freezed,
    Object? identityNo = freezed,
    Object? sex = freezed,
    Object? dob = freezed,
    Object? arbName = freezed,
    Object? engName = freezed,
    Object? accountId = freezed,
    Object? isInsurance = freezed,
    Object? randCode = freezed,
    Object? maritalStatus = freezed,
    Object? age = freezed,
    Object? address = freezed,
    Object? email = freezed,
    Object? isValid = freezed,
    Object? vitalSigns = freezed,
    Object? patAllergies = freezed,
    Object? patRel = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fileNum: freezed == fileNum
          ? _value.fileNum
          : fileNum // ignore: cast_nullable_to_non_nullable
              as int?,
      telephones: freezed == telephones
          ? _value.telephones
          : telephones // ignore: cast_nullable_to_non_nullable
              as String?,
      identityNo: freezed == identityNo
          ? _value.identityNo
          : identityNo // ignore: cast_nullable_to_non_nullable
              as String?,
      sex: freezed == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      arbName: freezed == arbName
          ? _value.arbName
          : arbName // ignore: cast_nullable_to_non_nullable
              as String?,
      engName: freezed == engName
          ? _value.engName
          : engName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int?,
      isInsurance: freezed == isInsurance
          ? _value.isInsurance
          : isInsurance // ignore: cast_nullable_to_non_nullable
              as bool?,
      randCode: freezed == randCode
          ? _value.randCode
          : randCode // ignore: cast_nullable_to_non_nullable
              as String?,
      maritalStatus: freezed == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: freezed == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool?,
      vitalSigns: freezed == vitalSigns
          ? _value.vitalSigns
          : vitalSigns // ignore: cast_nullable_to_non_nullable
              as VitalSigns?,
      patAllergies: freezed == patAllergies
          ? _value.patAllergies
          : patAllergies // ignore: cast_nullable_to_non_nullable
              as dynamic,
      patRel: freezed == patRel
          ? _value.patRel
          : patRel // ignore: cast_nullable_to_non_nullable
              as List<PatRel>?,
    ) as $Val);
  }

  /// Create a copy of PatientInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VitalSignsCopyWith<$Res>? get vitalSigns {
    if (_value.vitalSigns == null) {
      return null;
    }

    return $VitalSignsCopyWith<$Res>(_value.vitalSigns!, (value) {
      return _then(_value.copyWith(vitalSigns: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PatientInfoImplCopyWith<$Res>
    implements $PatientInfoCopyWith<$Res> {
  factory _$$PatientInfoImplCopyWith(
          _$PatientInfoImpl value, $Res Function(_$PatientInfoImpl) then) =
      __$$PatientInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'ID') int? id,
      @HiveField(1) @JsonKey(name: 'FileNum') int? fileNum,
      @HiveField(2) @JsonKey(name: 'Telephones') String? telephones,
      @HiveField(3) @JsonKey(name: 'IdentityNo') String? identityNo,
      @HiveField(4) @JsonKey(name: 'Sex') String? sex,
      @HiveField(5) @JsonKey(name: 'DOB') String? dob,
      @HiveField(6) @JsonKey(name: 'ArbName') String? arbName,
      @HiveField(7) @JsonKey(name: 'EngName') String? engName,
      @HiveField(8) @JsonKey(name: 'AccountID') int? accountId,
      @HiveField(9) @JsonKey(name: 'IsInsurance') bool? isInsurance,
      @HiveField(10) @JsonKey(name: 'RandCode') String? randCode,
      @HiveField(11) @JsonKey(name: 'MaritalStatus') String? maritalStatus,
      @HiveField(12) @JsonKey(name: 'Age') int? age,
      @HiveField(13) @JsonKey(name: 'Address') String? address,
      @HiveField(14) @JsonKey(name: 'Email') String? email,
      @HiveField(15) @JsonKey(name: 'IsValid') bool? isValid,
      @HiveField(16) @JsonKey(name: 'VitalSigns') VitalSigns? vitalSigns,
      @HiveField(17) @JsonKey(name: 'PatAllergies') dynamic patAllergies,
      @HiveField(18) @JsonKey(name: 'PatRel') List<PatRel>? patRel});

  @override
  $VitalSignsCopyWith<$Res>? get vitalSigns;
}

/// @nodoc
class __$$PatientInfoImplCopyWithImpl<$Res>
    extends _$PatientInfoCopyWithImpl<$Res, _$PatientInfoImpl>
    implements _$$PatientInfoImplCopyWith<$Res> {
  __$$PatientInfoImplCopyWithImpl(
      _$PatientInfoImpl _value, $Res Function(_$PatientInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PatientInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fileNum = freezed,
    Object? telephones = freezed,
    Object? identityNo = freezed,
    Object? sex = freezed,
    Object? dob = freezed,
    Object? arbName = freezed,
    Object? engName = freezed,
    Object? accountId = freezed,
    Object? isInsurance = freezed,
    Object? randCode = freezed,
    Object? maritalStatus = freezed,
    Object? age = freezed,
    Object? address = freezed,
    Object? email = freezed,
    Object? isValid = freezed,
    Object? vitalSigns = freezed,
    Object? patAllergies = freezed,
    Object? patRel = freezed,
  }) {
    return _then(_$PatientInfoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fileNum: freezed == fileNum
          ? _value.fileNum
          : fileNum // ignore: cast_nullable_to_non_nullable
              as int?,
      telephones: freezed == telephones
          ? _value.telephones
          : telephones // ignore: cast_nullable_to_non_nullable
              as String?,
      identityNo: freezed == identityNo
          ? _value.identityNo
          : identityNo // ignore: cast_nullable_to_non_nullable
              as String?,
      sex: freezed == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      arbName: freezed == arbName
          ? _value.arbName
          : arbName // ignore: cast_nullable_to_non_nullable
              as String?,
      engName: freezed == engName
          ? _value.engName
          : engName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int?,
      isInsurance: freezed == isInsurance
          ? _value.isInsurance
          : isInsurance // ignore: cast_nullable_to_non_nullable
              as bool?,
      randCode: freezed == randCode
          ? _value.randCode
          : randCode // ignore: cast_nullable_to_non_nullable
              as String?,
      maritalStatus: freezed == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: freezed == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool?,
      vitalSigns: freezed == vitalSigns
          ? _value.vitalSigns
          : vitalSigns // ignore: cast_nullable_to_non_nullable
              as VitalSigns?,
      patAllergies: freezed == patAllergies
          ? _value.patAllergies
          : patAllergies // ignore: cast_nullable_to_non_nullable
              as dynamic,
      patRel: freezed == patRel
          ? _value._patRel
          : patRel // ignore: cast_nullable_to_non_nullable
              as List<PatRel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientInfoImpl implements _PatientInfo {
  _$PatientInfoImpl(
      {@HiveField(0) @JsonKey(name: 'ID') this.id,
      @HiveField(1) @JsonKey(name: 'FileNum') this.fileNum,
      @HiveField(2) @JsonKey(name: 'Telephones') this.telephones,
      @HiveField(3) @JsonKey(name: 'IdentityNo') this.identityNo,
      @HiveField(4) @JsonKey(name: 'Sex') this.sex,
      @HiveField(5) @JsonKey(name: 'DOB') this.dob,
      @HiveField(6) @JsonKey(name: 'ArbName') this.arbName,
      @HiveField(7) @JsonKey(name: 'EngName') this.engName,
      @HiveField(8) @JsonKey(name: 'AccountID') this.accountId,
      @HiveField(9) @JsonKey(name: 'IsInsurance') this.isInsurance,
      @HiveField(10) @JsonKey(name: 'RandCode') this.randCode,
      @HiveField(11) @JsonKey(name: 'MaritalStatus') this.maritalStatus,
      @HiveField(12) @JsonKey(name: 'Age') this.age,
      @HiveField(13) @JsonKey(name: 'Address') this.address,
      @HiveField(14) @JsonKey(name: 'Email') this.email,
      @HiveField(15) @JsonKey(name: 'IsValid') this.isValid,
      @HiveField(16) @JsonKey(name: 'VitalSigns') this.vitalSigns,
      @HiveField(17) @JsonKey(name: 'PatAllergies') this.patAllergies,
      @HiveField(18) @JsonKey(name: 'PatRel') final List<PatRel>? patRel})
      : _patRel = patRel;

  factory _$PatientInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientInfoImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'ID')
  final int? id;
  @override
  @HiveField(1)
  @JsonKey(name: 'FileNum')
  final int? fileNum;
  @override
  @HiveField(2)
  @JsonKey(name: 'Telephones')
  final String? telephones;
  @override
  @HiveField(3)
  @JsonKey(name: 'IdentityNo')
  final String? identityNo;
  @override
  @HiveField(4)
  @JsonKey(name: 'Sex')
  final String? sex;
  @override
  @HiveField(5)
  @JsonKey(name: 'DOB')
  final String? dob;
  @override
  @HiveField(6)
  @JsonKey(name: 'ArbName')
  final String? arbName;
  @override
  @HiveField(7)
  @JsonKey(name: 'EngName')
  final String? engName;
  @override
  @HiveField(8)
  @JsonKey(name: 'AccountID')
  final int? accountId;
  @override
  @HiveField(9)
  @JsonKey(name: 'IsInsurance')
  final bool? isInsurance;
  @override
  @HiveField(10)
  @JsonKey(name: 'RandCode')
  final String? randCode;
  @override
  @HiveField(11)
  @JsonKey(name: 'MaritalStatus')
  final String? maritalStatus;
  @override
  @HiveField(12)
  @JsonKey(name: 'Age')
  final int? age;
  @override
  @HiveField(13)
  @JsonKey(name: 'Address')
  final String? address;
  @override
  @HiveField(14)
  @JsonKey(name: 'Email')
  final String? email;
  @override
  @HiveField(15)
  @JsonKey(name: 'IsValid')
  final bool? isValid;
  @override
  @HiveField(16)
  @JsonKey(name: 'VitalSigns')
  final VitalSigns? vitalSigns;
  @override
  @HiveField(17)
  @JsonKey(name: 'PatAllergies')
  final dynamic patAllergies;
  final List<PatRel>? _patRel;
  @override
  @HiveField(18)
  @JsonKey(name: 'PatRel')
  List<PatRel>? get patRel {
    final value = _patRel;
    if (value == null) return null;
    if (_patRel is EqualUnmodifiableListView) return _patRel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PatientInfo(id: $id, fileNum: $fileNum, telephones: $telephones, identityNo: $identityNo, sex: $sex, dob: $dob, arbName: $arbName, engName: $engName, accountId: $accountId, isInsurance: $isInsurance, randCode: $randCode, maritalStatus: $maritalStatus, age: $age, address: $address, email: $email, isValid: $isValid, vitalSigns: $vitalSigns, patAllergies: $patAllergies, patRel: $patRel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fileNum, fileNum) || other.fileNum == fileNum) &&
            (identical(other.telephones, telephones) ||
                other.telephones == telephones) &&
            (identical(other.identityNo, identityNo) ||
                other.identityNo == identityNo) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.arbName, arbName) || other.arbName == arbName) &&
            (identical(other.engName, engName) || other.engName == engName) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.isInsurance, isInsurance) ||
                other.isInsurance == isInsurance) &&
            (identical(other.randCode, randCode) ||
                other.randCode == randCode) &&
            (identical(other.maritalStatus, maritalStatus) ||
                other.maritalStatus == maritalStatus) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.vitalSigns, vitalSigns) ||
                other.vitalSigns == vitalSigns) &&
            const DeepCollectionEquality()
                .equals(other.patAllergies, patAllergies) &&
            const DeepCollectionEquality().equals(other._patRel, _patRel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        fileNum,
        telephones,
        identityNo,
        sex,
        dob,
        arbName,
        engName,
        accountId,
        isInsurance,
        randCode,
        maritalStatus,
        age,
        address,
        email,
        isValid,
        vitalSigns,
        const DeepCollectionEquality().hash(patAllergies),
        const DeepCollectionEquality().hash(_patRel)
      ]);

  /// Create a copy of PatientInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientInfoImplCopyWith<_$PatientInfoImpl> get copyWith =>
      __$$PatientInfoImplCopyWithImpl<_$PatientInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientInfoImplToJson(
      this,
    );
  }
}

abstract class _PatientInfo implements PatientInfo {
  factory _PatientInfo(
      {@HiveField(0) @JsonKey(name: 'ID') final int? id,
      @HiveField(1) @JsonKey(name: 'FileNum') final int? fileNum,
      @HiveField(2) @JsonKey(name: 'Telephones') final String? telephones,
      @HiveField(3) @JsonKey(name: 'IdentityNo') final String? identityNo,
      @HiveField(4) @JsonKey(name: 'Sex') final String? sex,
      @HiveField(5) @JsonKey(name: 'DOB') final String? dob,
      @HiveField(6) @JsonKey(name: 'ArbName') final String? arbName,
      @HiveField(7) @JsonKey(name: 'EngName') final String? engName,
      @HiveField(8) @JsonKey(name: 'AccountID') final int? accountId,
      @HiveField(9) @JsonKey(name: 'IsInsurance') final bool? isInsurance,
      @HiveField(10) @JsonKey(name: 'RandCode') final String? randCode,
      @HiveField(11)
      @JsonKey(name: 'MaritalStatus')
      final String? maritalStatus,
      @HiveField(12) @JsonKey(name: 'Age') final int? age,
      @HiveField(13) @JsonKey(name: 'Address') final String? address,
      @HiveField(14) @JsonKey(name: 'Email') final String? email,
      @HiveField(15) @JsonKey(name: 'IsValid') final bool? isValid,
      @HiveField(16) @JsonKey(name: 'VitalSigns') final VitalSigns? vitalSigns,
      @HiveField(17) @JsonKey(name: 'PatAllergies') final dynamic patAllergies,
      @HiveField(18)
      @JsonKey(name: 'PatRel')
      final List<PatRel>? patRel}) = _$PatientInfoImpl;

  factory _PatientInfo.fromJson(Map<String, dynamic> json) =
      _$PatientInfoImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'ID')
  int? get id;
  @override
  @HiveField(1)
  @JsonKey(name: 'FileNum')
  int? get fileNum;
  @override
  @HiveField(2)
  @JsonKey(name: 'Telephones')
  String? get telephones;
  @override
  @HiveField(3)
  @JsonKey(name: 'IdentityNo')
  String? get identityNo;
  @override
  @HiveField(4)
  @JsonKey(name: 'Sex')
  String? get sex;
  @override
  @HiveField(5)
  @JsonKey(name: 'DOB')
  String? get dob;
  @override
  @HiveField(6)
  @JsonKey(name: 'ArbName')
  String? get arbName;
  @override
  @HiveField(7)
  @JsonKey(name: 'EngName')
  String? get engName;
  @override
  @HiveField(8)
  @JsonKey(name: 'AccountID')
  int? get accountId;
  @override
  @HiveField(9)
  @JsonKey(name: 'IsInsurance')
  bool? get isInsurance;
  @override
  @HiveField(10)
  @JsonKey(name: 'RandCode')
  String? get randCode;
  @override
  @HiveField(11)
  @JsonKey(name: 'MaritalStatus')
  String? get maritalStatus;
  @override
  @HiveField(12)
  @JsonKey(name: 'Age')
  int? get age;
  @override
  @HiveField(13)
  @JsonKey(name: 'Address')
  String? get address;
  @override
  @HiveField(14)
  @JsonKey(name: 'Email')
  String? get email;
  @override
  @HiveField(15)
  @JsonKey(name: 'IsValid')
  bool? get isValid;
  @override
  @HiveField(16)
  @JsonKey(name: 'VitalSigns')
  VitalSigns? get vitalSigns;
  @override
  @HiveField(17)
  @JsonKey(name: 'PatAllergies')
  dynamic get patAllergies;
  @override
  @HiveField(18)
  @JsonKey(name: 'PatRel')
  List<PatRel>? get patRel;

  /// Create a copy of PatientInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatientInfoImplCopyWith<_$PatientInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
