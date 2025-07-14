// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:remain/src/features/medical_record/data/model/record_statement_dto/record_statement_data.dart';

import '../../../domain/entities/entities.dart';

part 'record_statement_dto.freezed.dart';
part 'record_statement_dto.g.dart';

@freezed
class RecordStatementDto with _$RecordStatementDto {
  factory RecordStatementDto({
    @JsonKey(name: 'request_id') String? requestId,
    num? code,
    @JsonKey(name: 'error_message') String? errorMessage,
    List<RecordStatementData>? data,
  }) = _RecordStatementDto;

  factory RecordStatementDto.fromJson(Map<String, dynamic> json) =>
      _$RecordStatementDtoFromJson(json);
}

extension RecordStatementDtoX on RecordStatementDto {
  RecordStatementEntity toEntity() => RecordStatementEntity(
        requestId: requestId,
        code: code,
        errorMessage: errorMessage,
        data: data,
      );
}
