import 'package:freezed_annotation/freezed_annotation.dart';

part 'program_data.freezed.dart';
part 'program_data.g.dart';

@freezed
class ProgramData with _$ProgramData {
  factory ProgramData({
    @JsonKey(name: 'programID') String? programId,
    @JsonKey(name: 'programVerID') String? programVerId,
  }) = _ProgramData;

  factory ProgramData.fromJson(Map<String, dynamic> json) =>
      _$ProgramDataFromJson(json);
}
