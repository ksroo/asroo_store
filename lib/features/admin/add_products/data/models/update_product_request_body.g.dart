// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_product_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateProductRequestBody _$UpdateProductRequestBodyFromJson(
        Map<String, dynamic> json) =>
    UpdateProductRequestBody(
      categoryId: (json['categoryId'] as num).toDouble(),
      description: json['description'] as String,
      imageList:
          (json['imageList'] as List<dynamic>).map((e) => e as String).toList(),
      price: (json['price'] as num).toDouble(),
      productId: json['productId'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$UpdateProductRequestBodyToJson(
        UpdateProductRequestBody instance) =>
    <String, dynamic>{
      'title': instance.title,
      'price': instance.price,
      'imageList': instance.imageList,
      'description': instance.description,
      'categoryId': instance.categoryId,
      'productId': instance.productId,
    };
