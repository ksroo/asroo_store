// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_category_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateCategoryRequestBody _$UpdateCategoryRequestBodyFromJson(
        Map<String, dynamic> json) =>
    UpdateCategoryRequestBody(
      name: json['name'] as String,
      image: json['image'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$UpdateCategoryRequestBodyToJson(
        UpdateCategoryRequestBody instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'id': instance.id,
    };
