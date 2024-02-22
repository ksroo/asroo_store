import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_request_body.g.dart';

@JsonSerializable()
class SearchRequestBody {
  SearchRequestBody({
    required this.searchName,
    required this.priceMin,
    required this.priceMax,
  });

  final String? searchName;
  final int? priceMin;
  final int? priceMax;

  Map<String, dynamic> toJson() => _$SearchRequestBodyToJson(this);
}
