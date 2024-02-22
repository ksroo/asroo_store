// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchRequestBody _$SearchRequestBodyFromJson(Map<String, dynamic> json) =>
    SearchRequestBody(
      searchName: json['searchName'] as String?,
      priceMin: json['priceMin'] as int?,
      priceMax: json['priceMax'] as int?,
    );

Map<String, dynamic> _$SearchRequestBodyToJson(SearchRequestBody instance) =>
    <String, dynamic>{
      'searchName': instance.searchName,
      'priceMin': instance.priceMin,
      'priceMax': instance.priceMax,
    };
