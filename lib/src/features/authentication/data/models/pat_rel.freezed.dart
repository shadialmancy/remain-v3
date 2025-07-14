// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pat_rel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PatRel _$PatRelFromJson(Map<String, dynamic> json) {
  return _PatRel.fromJson(json);
}

/// @nodoc
mixin _$PatRel {
  @HiveField(0)
  @JsonKey(name: 'PatID')
  int? get patID => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'ID')
  int? get id => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'FileNum')
  int? get fileNum => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'Telephones')
  String? get telephones => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'IdentityNo')
  String? get identityNo => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'Sex')
  String? get sex => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: 'DOB')
  String? get dob => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: 'ArbName')
  String? get arbName => throw _privateConstructorUsedError;
  @HiveField(8)
  @JsonKey(name: 'EngName')
  String? get engName => throw _privateConstructorUsedError;

  /// Serializes this PatRel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PatRel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatRelCopyWith<PatRel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatRelCopyWith<$Res> {
  factory $PatRelCopyWith(PatRel value, $Res Function(PatRel) then) =
      _$PatRelCopyWithImpl<$Res, PatRel>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'PatID') int? patID,
      @HiveField(1) @JsonKey(name: 'ID') int? id,
      @HiveField(2) @JsonKey(name: 'FileNum') int? fileNum,
      @HiveField(3) @JsonKey(name: 'Telephones') String? telephones,
      @HiveField(4) @JsonKey(name: 'IdentityNo') String? identityNo,
      @HiveField(5) @JsonKey(name: 'Sex') String? sex,
      @HiveField(6) @JsonKey(name: 'DOB') String? dob,
      @HiveField(7) @JsonKey(name: 'ArbName') String? arbName,
      @HiveField(8) @JsonKey(name: 'EngName') String? engName});
}

/// @nodoc
class _$PatRelCopyWithImpl<$Res, $Val extends PatRel>
    implements $PatRelCopyWith<$Res> {
  _$PatRelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatRel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patID = freezed,
    Object? id = freezed,
    Object? fileNum = freezed,
    Object? telephones = freezed,
    Object? identityNo = freezed,
    Object? sex = freezed,
    Object? dob = freezed,
    Object? arbName = freezed,
    Object? engName = freezed,
  }) {
    return _then(_value.copyWith(
      patID: freezed == patID
          ? _value.patID
          : patID // ignore: cast_nullable_to_non_nullable
              as int?,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatRelImplCopyWith<$Res> implements $PatRelCopyWith<$Res> {
  factory _$$PatRelImplCopyWith(
          _$PatRelImpl value, $Res Function(_$PatRelImpl) then) =
      __$$PatRelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'PatID') int? patID,
      @HiveField(1) @JsonKey(name: 'ID') int? id,
      @HiveField(2) @JsonKey(name: 'FileNum') int? fileNum,
      @HiveField(3) @JsonKey(name: 'Telephones') String? telephones,
      @HiveField(4) @JsonKey(name: 'IdentityNo') String? identityNo,
      @HiveField(5) @JsonKey(name: 'Sex') String? sex,
      @HiveField(6) @JsonKey(name: 'DOB') String? dob,
      @HiveField(7) @JsonKey(name: 'ArbName') String? arbName,
      @HiveField(8) @JsonKey(name: 'EngName') String? engName});
}

/// @nodoc
class __$$PatRelImplCopyWithImpl<$Res>
    extends _$PatRelCopyWithImpl<$Res, _$PatRelImpl>
    implements _$$PatRelImplCopyWith<$Res> {
  __$$PatRelImplCopyWithImpl(
      _$PatRelImpl _value, $Res Function(_$PatRelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PatRel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patID = freezed,
    Object? id = freezed,
    Object? fileNum = freezed,
    Object? telephones = freezed,
    Object? identityNo = freezed,
    Object? sex = freezed,
    Object? dob = freezed,
    Object? arbName = freezed,
    Object? engName = freezed,
  }) {
    return _then(_$PatRelImpl(
      patID: freezed == patID
          ? _value.patID
          : patID // ignore: cast_nullable_to_non_nullable
              as int?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatRelImpl implements _PatRel {
  _$PatRelImpl(
      {@HiveField(0) @JsonKey(name: 'PatID') this.patID,
      @HiveField(1) @JsonKey(name: 'ID') this.id,
      @HiveField(2) @JsonKey(name: 'FileNum') this.fileNum,
      @HiveField(3) @JsonKey(name: 'Telephones') this.telephones,
      @HiveField(4) @JsonKey(name: 'IdentityNo') this.identityNo,
      @HiveField(5) @JsonKey(name: 'Sex') this.sex,
      @HiveField(6) @JsonKey(name: 'DOB') this.dob,
      @HiveField(7) @JsonKey(name: 'ArbName') this.arbName,
      @HiveField(8) @JsonKey(name: 'EngName') this.engName});

  factory _$PatRelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatRelImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'PatID')
  final int? patID;
  @override
  @HiveField(1)
  @JsonKey(name: 'ID')
  final int? id;
  @override
  @HiveField(2)
  @JsonKey(name: 'FileNum')
  final int? fileNum;
  @override
  @HiveField(3)
  @JsonKey(name: 'Telephones')
  final String? telephones;
  @override
  @HiveField(4)
  @JsonKey(name: 'IdentityNo')
  final String? identityNo;
  @override
  @HiveField(5)
  @JsonKey(name: 'Sex')
  final String? sex;
  @override
  @HiveField(6)
  @JsonKey(name: 'DOB')
  final String? dob;
  @override
  @HiveField(7)
  @JsonKey(name: 'ArbName')
  final String? arbName;
  @override
  @HiveField(8)
  @JsonKey(name: 'EngName')
  final String? engName;

  @override
  String toString() {
    return 'PatRel(patID: $patID, id: $id, fileNum: $fileNum, telephones: $telephones, identityNo: $identityNo, sex: $sex, dob: $dob, arbName: $arbName, engName: $engName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatRelImpl &&
            (identical(other.patID, patID) || other.patID == patID) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fileNum, fileNum) || other.fileNum == fileNum) &&
            (identical(other.telephones, telephones) ||
                other.telephones == telephones) &&
            (identical(other.identityNo, identityNo) ||
                other.identityNo == identityNo) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.arbName, arbName) || other.arbName == arbName) &&
            (identical(other.engName, engName) || other.engName == engName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, patID, id, fileNum, telephones,
      identityNo, sex, dob, arbName, engName);

  /// Create a copy of PatRel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatRelImplCopyWith<_$PatRelImpl> get copyWith =>
      __$$PatRelImplCopyWithImpl<_$PatRelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatRelImplToJson(
      this,
    );
  }
}

abstract class _PatRel implements PatRel {
  factory _PatRel(
          {@HiveField(0) @JsonKey(name: 'PatID') final int? patID,
          @HiveField(1) @JsonKey(name: 'ID') final int? id,
          @HiveField(2) @JsonKey(name: 'FileNum') final int? fileNum,
          @HiveField(3) @JsonKey(name: 'Telephones') final String? telephones,
          @HiveField(4) @JsonKey(name: 'IdentityNo') final String? identityNo,
          @HiveField(5) @JsonKey(name: 'Sex') final String? sex,
          @HiveField(6) @JsonKey(name: 'DOB') final String? dob,
          @HiveField(7) @JsonKey(name: 'ArbName') final String? arbName,
          @HiveField(8) @JsonKey(name: 'EngName') final String? engName}) =
      _$PatRelImpl;

  factory _PatRel.fromJson(Map<String, dynamic> json) = _$PatRelImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'PatID')
  int? get patID;
  @override
  @HiveField(1)
  @JsonKey(name: 'ID')
  int? get id;
  @override
  @HiveField(2)
  @JsonKey(name: 'FileNum')
  int? get fileNum;
  @override
  @HiveField(3)
  @JsonKey(name: 'Telephones')
  String? get telephones;
  @override
  @HiveField(4)
  @JsonKey(name: 'IdentityNo')
  String? get identityNo;
  @override
  @HiveField(5)
  @JsonKey(name: 'Sex')
  String? get sex;
  @override
  @HiveField(6)
  @JsonKey(name: 'DOB')
  String? get dob;
  @override
  @HiveField(7)
  @JsonKey(name: 'ArbName')
  String? get arbName;
  @override
  @HiveField(8)
  @JsonKey(name: 'EngName')
  String? get engName;

  /// Create a copy of PatRel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatRelImplCopyWith<_$PatRelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
