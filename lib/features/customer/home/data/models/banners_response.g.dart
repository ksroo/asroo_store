// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banners_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannersResponse _$BannersResponseFromJson(Map<String, dynamic> json) =>
    BannersResponse(
      BannersData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BannersResponseToJson(BannersResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

BannersData _$BannersDataFromJson(Map<String, dynamic> json) => BannersData(
      (json['products'] as List<dynamic>)
          .map((e) => BannersModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BannersDataToJson(BannersData instance) =>
    <String, dynamic>{
      'products': instance.bannersModel,
    };

BannersModel _$BannersModelFromJson(Map<String, dynamic> json) => BannersModel(
      (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      json['title'] as String?,
    );

Map<String, dynamic> _$BannersModelToJson(BannersModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'images': instance.images,
    };
