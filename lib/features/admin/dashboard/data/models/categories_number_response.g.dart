// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_number_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriesNumberResponse _$CategoriesNumberResponseFromJson(
        Map<String, dynamic> json) =>
    CategoriesNumberResponse(
      CategoriesNumberData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoriesNumberResponseToJson(
        CategoriesNumberResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

CategoriesNumberData _$CategoriesNumberDataFromJson(
        Map<String, dynamic> json) =>
    CategoriesNumberData(
      (json['categories'] as List<dynamic>)
          .map((e) => CategoriesNumberModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoriesNumberDataToJson(
        CategoriesNumberData instance) =>
    <String, dynamic>{
      'categories': instance.categoriesList,
    };

CategoriesNumberModel _$CategoriesNumberModelFromJson(
        Map<String, dynamic> json) =>
    CategoriesNumberModel(
      json['name'] as String?,
    );

Map<String, dynamic> _$CategoriesNumberModelToJson(
        CategoriesNumberModel instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
