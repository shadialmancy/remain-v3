// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'specialty_fliter.freezed.dart';
part 'specialty_fliter.g.dart';

@freezed
class SpecialtyFilter with _$SpecialtyFilter {
  factory SpecialtyFilter({
    List<int>? gender,
    bool? isOnline,
  }) = _SpecialtyFilter;

  factory SpecialtyFilter.fromJson(Map<String, dynamic> json) =>
      _$SpecialtyFilterFromJson(json);
}
