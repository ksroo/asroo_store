// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_product_reponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllProductResponse _$GetAllProductResponseFromJson(
        Map<String, dynamic> json) =>
    GetAllProductResponse(
      ProductGetAllData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetAllProductResponseToJson(
        GetAllProductResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

ProductGetAllData _$ProductGetAllDataFromJson(Map<String, dynamic> json) =>
    ProductGetAllData(
      (json['products'] as List<dynamic>)
          .map((e) => ProductGetAllModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductGetAllDataToJson(ProductGetAllData instance) =>
    <String, dynamic>{
      'products': instance.productsLsit,
    };

ProductGetAllModel _$ProductGetAllModelFromJson(Map<String, dynamic> json) =>
    ProductGetAllModel(
      json['id'] as String?,
      json['title'] as String?,
      (json['price'] as num?)?.toDouble(),
      (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['description'] as String?,
      json['category'] == null
          ? null
          : CategoryProductModel.fromJson(
              json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductGetAllModelToJson(ProductGetAllModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'images': instance.images,
      'description': instance.description,
      'category': instance.category,
    };

CategoryProductModel _$CategoryProductModelFromJson(
        Map<String, dynamic> json) =>
    CategoryProductModel(
      json['id'] as String?,
      json['name'] as String?,
    );

Map<String, dynamic> _$CategoryProductModelToJson(
        CategoryProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
