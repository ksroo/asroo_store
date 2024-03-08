// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_number_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsersNumberResponse _$UsersNumberResponseFromJson(Map<String, dynamic> json) =>
    UsersNumberResponse(
      UsersNumberData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersNumberResponseToJson(
        UsersNumberResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

UsersNumberData _$UsersNumberDataFromJson(Map<String, dynamic> json) =>
    UsersNumberData(
      (json['users'] as List<dynamic>)
          .map((e) => UsersNumberModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UsersNumberDataToJson(UsersNumberData instance) =>
    <String, dynamic>{
      'users': instance.usersList,
    };

UsersNumberModel _$UsersNumberModelFromJson(Map<String, dynamic> json) =>
    UsersNumberModel(
      json['name'] as String?,
    );

Map<String, dynamic> _$UsersNumberModelToJson(UsersNumberModel instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
