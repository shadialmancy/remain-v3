import 'package:freezed_annotation/freezed_annotation.dart';

part 'merchant_url.freezed.dart';
part 'merchant_url.g.dart';

@freezed
class MerchantUrl with _$MerchantUrl {
  factory MerchantUrl({
    String? cancel,
    String? failure,
    String? success,
    String? notification,
  }) = _MerchantUrl;

  factory MerchantUrl.fromJson(Map<String, dynamic> json) =>
      _$MerchantUrlFromJson(json);
}
