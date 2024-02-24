// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_reponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDetailsResponse _$ProductDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    ProductDetailsResponse(
      ProductDetailsData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductDetailsResponseToJson(
        ProductDetailsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

ProductDetailsData _$ProductDetailsDataFromJson(Map<String, dynamic> json) =>
    ProductDetailsData(
      ProductDetailsModel.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductDetailsDataToJson(ProductDetailsData instance) =>
    <String, dynamic>{
      'product': instance.productModel,
    };

ProductDetailsModel _$ProductDetailsModelFromJson(Map<String, dynamic> json) =>
    ProductDetailsModel(
      json['title'] as String?,
      (json['price'] as num?)?.toDouble(),
      (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      json['description'] as String?,
      json['category'] == null
          ? null
          : CategoryDateilaModel.fromJson(
              json['category'] as Map<String, dynamic>),
      json['id'] as String?,
    );

Map<String, dynamic> _$ProductDetailsModelToJson(
        ProductDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'images': instance.images,
      'description': instance.description,
      'category': instance.category,
    };

CategoryDateilaModel _$CategoryDateilaModelFromJson(
        Map<String, dynamic> json) =>
    CategoryDateilaModel(
      json['name'] as String,
    );

Map<String, dynamic> _$CategoryDateilaModelToJson(
        CategoryDateilaModel instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
