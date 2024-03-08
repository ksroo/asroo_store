// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_category_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCategoryRequestBody _$CreateCategoryRequestBodyFromJson(
        Map<String, dynamic> json) =>
    CreateCategoryRequestBody(
      name: json['name'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$CreateCategoryRequestBodyToJson(
        CreateCategoryRequestBody instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
    };
