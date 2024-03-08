// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_product_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateProductRequestBody _$CreateProductRequestBodyFromJson(
        Map<String, dynamic> json) =>
    CreateProductRequestBody(
      title: json['title'] as String,
      imageList:
          (json['imageList'] as List<dynamic>).map((e) => e as String).toList(),
      categoryId: (json['categoryId'] as num).toDouble(),
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$CreateProductRequestBodyToJson(
        CreateProductRequestBody instance) =>
    <String, dynamic>{
      'title': instance.title,
      'price': instance.price,
      'imageList': instance.imageList,
      'description': instance.description,
      'categoryId': instance.categoryId,
    };
