// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'porducts_number_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsNumberResponse _$ProductsNumberResponseFromJson(
        Map<String, dynamic> json) =>
    ProductsNumberResponse(
      ProductsNumberData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductsNumberResponseToJson(
        ProductsNumberResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

ProductsNumberData _$ProductsNumberDataFromJson(Map<String, dynamic> json) =>
    ProductsNumberData(
      (json['products'] as List<dynamic>)
          .map((e) => ProductsNumberModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductsNumberDataToJson(ProductsNumberData instance) =>
    <String, dynamic>{
      'products': instance.productsList,
    };

ProductsNumberModel _$ProductsNumberModelFromJson(Map<String, dynamic> json) =>
    ProductsNumberModel(
      json['title'] as String?,
    );

Map<String, dynamic> _$ProductsNumberModelToJson(
        ProductsNumberModel instance) =>
    <String, dynamic>{
      'title': instance.title,
    };
