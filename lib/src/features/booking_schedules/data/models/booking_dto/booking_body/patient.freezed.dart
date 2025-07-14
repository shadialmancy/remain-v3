// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Patient _$PatientFromJson(Map<String, dynamic> json) {
  return _Patient.fromJson(json);
}

/// @nodoc
mixin _$Patient {
  String? get gender => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get dob => throw _privateConstructorUsedError;
  @JsonKey(name: 'document_id_type')
  String? get documentIdType => throw _privateConstructorUsedError;
  @JsonKey(name: 'patient_document_id')
  String? get patientDocumentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'nationality_id')
  String? get nationalityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'patient_id')
  String? get patientId => throw _privateConstructorUsedError;

  /// Serializes this Patient to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Patient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatientCopyWith<Patient> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientCopyWith<$Res> {
  factory $PatientCopyWith(Patient value, $Res Function(Patient) then) =
      _$PatientCopyWithImpl<$Res, Patient>;
  @useResult
  $Res call(
      {String? gender,
      String? name,
      String? email,
      String? phone,
      String? dob,
      @JsonKey(name: 'document_id_type') String? documentIdType,
      @JsonKey(name: 'patient_document_id') String? patientDocumentId,
      @JsonKey(name: 'nationality_id') String? nationalityId,
      @JsonKey(name: 'patient_id') String? patientId});
}

/// @nodoc
class _$PatientCopyWithImpl<$Res, $Val extends Patient>
    implements $PatientCopyWith<$Res> {
  _$PatientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Patient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? dob = freezed,
    Object? documentIdType = freezed,
    Object? patientDocumentId = freezed,
    Object? nationalityId = freezed,
    Object? patientId = freezed,
  }) {
    return _then(_value.copyWith(
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      documentIdType: freezed == documentIdType
          ? _value.documentIdType
          : documentIdType // ignore: cast_nullable_to_non_nullable
              as String?,
      patientDocumentId: freezed == patientDocumentId
          ? _value.patientDocumentId
          : patientDocumentId // ignore: cast_nullable_to_non_nullable
              as String?,
      nationalityId: freezed == nationalityId
          ? _value.nationalityId
          : nationalityId // ignore: cast_nullable_to_non_nullable
              as String?,
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientImplCopyWith<$Res> implements $PatientCopyWith<$Res> {
  factory _$$PatientImplCopyWith(
          _$PatientImpl value, $Res Function(_$PatientImpl) then) =
      __$$PatientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? gender,
      String? name,
      String? email,
      String? phone,
      String? dob,
      @JsonKey(name: 'document_id_type') String? documentIdType,
      @JsonKey(name: 'patient_document_id') String? patientDocumentId,
      @JsonKey(name: 'nationality_id') String? nationalityId,
      @JsonKey(name: 'patient_id') String? patientId});
}

/// @nodoc
class __$$PatientImplCopyWithImpl<$Res>
    extends _$PatientCopyWithImpl<$Res, _$PatientImpl>
    implements _$$PatientImplCopyWith<$Res> {
  __$$PatientImplCopyWithImpl(
      _$PatientImpl _value, $Res Function(_$PatientImpl) _then)
      : super(_value, _then);

  /// Create a copy of Patient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? dob = freezed,
    Object? documentIdType = freezed,
    Object? patientDocumentId = freezed,
    Object? nationalityId = freezed,
    Object? patientId = freezed,
  }) {
    return _then(_$PatientImpl(
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      documentIdType: freezed == documentIdType
          ? _value.documentIdType
          : documentIdType // ignore: cast_nullable_to_non_nullable
              as String?,
      patientDocumentId: freezed == patientDocumentId
          ? _value.patientDocumentId
          : patientDocumentId // ignore: cast_nullable_to_non_nullable
              as String?,
      nationalityId: freezed == nationalityId
          ? _value.nationalityId
          : nationalityId // ignore: cast_nullable_to_non_nullable
              as String?,
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientImpl implements _Patient {
  _$PatientImpl(
      {this.gender,
      this.name,
      this.email,
      this.phone,
      this.dob,
      @JsonKey(name: 'document_id_type') this.documentIdType,
      @JsonKey(name: 'patient_document_id') this.patientDocumentId,
      @JsonKey(name: 'nationality_id') this.nationalityId,
      @JsonKey(name: 'patient_id') this.patientId});

  factory _$PatientImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientImplFromJson(json);

  @override
  final String? gender;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? dob;
  @override
  @JsonKey(name: 'document_id_type')
  final String? documentIdType;
  @override
  @JsonKey(name: 'patient_document_id')
  final String? patientDocumentId;
  @override
  @JsonKey(name: 'nationality_id')
  final String? nationalityId;
  @override
  @JsonKey(name: 'patient_id')
  final String? patientId;

  @override
  String toString() {
    return 'Patient(gender: $gender, name: $name, email: $email, phone: $phone, dob: $dob, documentIdType: $documentIdType, patientDocumentId: $patientDocumentId, nationalityId: $nationalityId, patientId: $patientId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientImpl &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.documentIdType, documentIdType) ||
                other.documentIdType == documentIdType) &&
            (identical(other.patientDocumentId, patientDocumentId) ||
                other.patientDocumentId == patientDocumentId) &&
            (identical(other.nationalityId, nationalityId) ||
                other.nationalityId == nationalityId) &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, gender, name, email, phone, dob,
      documentIdType, patientDocumentId, nationalityId, patientId);

  /// Create a copy of Patient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientImplCopyWith<_$PatientImpl> get copyWith =>
      __$$PatientImplCopyWithImpl<_$PatientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientImplToJson(
      this,
    );
  }
}

abstract class _Patient implements Patient {
  factory _Patient(
      {final String? gender,
      final String? name,
      final String? email,
      final String? phone,
      final String? dob,
      @JsonKey(name: 'document_id_type') final String? documentIdType,
      @JsonKey(name: 'patient_document_id') final String? patientDocumentId,
      @JsonKey(name: 'nationality_id') final String? nationalityId,
      @JsonKey(name: 'patient_id') final String? patientId}) = _$PatientImpl;

  factory _Patient.fromJson(Map<String, dynamic> json) = _$PatientImpl.fromJson;

  @override
  String? get gender;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get dob;
  @override
  @JsonKey(name: 'document_id_type')
  String? get documentIdType;
  @override
  @JsonKey(name: 'patient_document_id')
  String? get patientDocumentId;
  @override
  @JsonKey(name: 'nationality_id')
  String? get nationalityId;
  @override
  @JsonKey(name: 'patient_id')
  String? get patientId;

  /// Create a copy of Patient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatientImplCopyWith<_$PatientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
