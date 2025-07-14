import 'package:freezed_annotation/freezed_annotation.dart';

part 'consumer.freezed.dart';
part 'consumer.g.dart';

@freezed
class Consumer with _$Consumer {
  factory Consumer({
    String? email,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'phone_number') String? phoneNumber,
  }) = _Consumer;

  factory Consumer.fromJson(Map<String, dynamic> json) =>
      _$ConsumerFromJson(json);
}
