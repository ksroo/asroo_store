// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_categories_reponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriesGetAllResponse _$CategoriesGetAllResponseFromJson(
        Map<String, dynamic> json) =>
    CategoriesGetAllResponse(
      CategoriesGetAllData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoriesGetAllResponseToJson(
        CategoriesGetAllResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

CategoriesGetAllData _$CategoriesGetAllDataFromJson(
        Map<String, dynamic> json) =>
    CategoriesGetAllData(
      (json['categories'] as List<dynamic>)
          .map((e) => CategoriesGetAllModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoriesGetAllDataToJson(
        CategoriesGetAllData instance) =>
    <String, dynamic>{
      'categories': instance.categoriesList,
    };

CategoriesGetAllModel _$CategoriesGetAllModelFromJson(
        Map<String, dynamic> json) =>
    CategoriesGetAllModel(
      json['name'] as String?,
      json['id'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$CategoriesGetAllModelToJson(
        CategoriesGetAllModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };
