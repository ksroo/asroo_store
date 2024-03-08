// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCategoryResponse _$CreateCategoryResponseFromJson(
        Map<String, dynamic> json) =>
    CreateCategoryResponse(
      CreateCategoryData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateCategoryResponseToJson(
        CreateCategoryResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

CreateCategoryData _$CreateCategoryDataFromJson(Map<String, dynamic> json) =>
    CreateCategoryData(
      CreateCategoryModel.fromJson(json['addCategory'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateCategoryDataToJson(CreateCategoryData instance) =>
    <String, dynamic>{
      'addCategory': instance.categoryModel,
    };

CreateCategoryModel _$CreateCategoryModelFromJson(Map<String, dynamic> json) =>
    CreateCategoryModel(
      json['name'] as String?,
      json['id'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$CreateCategoryModelToJson(
        CreateCategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };
