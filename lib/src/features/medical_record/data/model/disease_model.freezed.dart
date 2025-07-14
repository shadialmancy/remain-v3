// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'disease_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DiseaseModel _$DiseaseModelFromJson(Map<String, dynamic> json) {
  return _DiseaseModel.fromJson(json);
}

/// @nodoc
mixin _$DiseaseModel {
  String? get diseaseName => throw _privateConstructorUsedError;
  String? get yearsOfInjury => throw _privateConstructorUsedError;

  /// Serializes this DiseaseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DiseaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiseaseModelCopyWith<DiseaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiseaseModelCopyWith<$Res> {
  factory $DiseaseModelCopyWith(
          DiseaseModel value, $Res Function(DiseaseModel) then) =
      _$DiseaseModelCopyWithImpl<$Res, DiseaseModel>;
  @useResult
  $Res call({String? diseaseName, String? yearsOfInjury});
}

/// @nodoc
class _$DiseaseModelCopyWithImpl<$Res, $Val extends DiseaseModel>
    implements $DiseaseModelCopyWith<$Res> {
  _$DiseaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiseaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diseaseName = freezed,
    Object? yearsOfInjury = freezed,
  }) {
    return _then(_value.copyWith(
      diseaseName: freezed == diseaseName
          ? _value.diseaseName
          : diseaseName // ignore: cast_nullable_to_non_nullable
              as String?,
      yearsOfInjury: freezed == yearsOfInjury
          ? _value.yearsOfInjury
          : yearsOfInjury // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiseaseModelImplCopyWith<$Res>
    implements $DiseaseModelCopyWith<$Res> {
  factory _$$DiseaseModelImplCopyWith(
          _$DiseaseModelImpl value, $Res Function(_$DiseaseModelImpl) then) =
      __$$DiseaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? diseaseName, String? yearsOfInjury});
}

/// @nodoc
class __$$DiseaseModelImplCopyWithImpl<$Res>
    extends _$DiseaseModelCopyWithImpl<$Res, _$DiseaseModelImpl>
    implements _$$DiseaseModelImplCopyWith<$Res> {
  __$$DiseaseModelImplCopyWithImpl(
      _$DiseaseModelImpl _value, $Res Function(_$DiseaseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiseaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diseaseName = freezed,
    Object? yearsOfInjury = freezed,
  }) {
    return _then(_$DiseaseModelImpl(
      diseaseName: freezed == diseaseName
          ? _value.diseaseName
          : diseaseName // ignore: cast_nullable_to_non_nullable
              as String?,
      yearsOfInjury: freezed == yearsOfInjury
          ? _value.yearsOfInjury
          : yearsOfInjury // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiseaseModelImpl implements _DiseaseModel {
  _$DiseaseModelImpl({this.diseaseName, this.yearsOfInjury});

  factory _$DiseaseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiseaseModelImplFromJson(json);

  @override
  final String? diseaseName;
  @override
  final String? yearsOfInjury;

  @override
  String toString() {
    return 'DiseaseModel(diseaseName: $diseaseName, yearsOfInjury: $yearsOfInjury)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiseaseModelImpl &&
            (identical(other.diseaseName, diseaseName) ||
                other.diseaseName == diseaseName) &&
            (identical(other.yearsOfInjury, yearsOfInjury) ||
                other.yearsOfInjury == yearsOfInjury));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, diseaseName, yearsOfInjury);

  /// Create a copy of DiseaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiseaseModelImplCopyWith<_$DiseaseModelImpl> get copyWith =>
      __$$DiseaseModelImplCopyWithImpl<_$DiseaseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiseaseModelImplToJson(
      this,
    );
  }
}

abstract class _DiseaseModel implements DiseaseModel {
  factory _DiseaseModel(
      {final String? diseaseName,
      final String? yearsOfInjury}) = _$DiseaseModelImpl;

  factory _DiseaseModel.fromJson(Map<String, dynamic> json) =
      _$DiseaseModelImpl.fromJson;

  @override
  String? get diseaseName;
  @override
  String? get yearsOfInjury;

  /// Create a copy of DiseaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiseaseModelImplCopyWith<_$DiseaseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
