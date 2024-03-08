// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpResponse _$SignUpResponseFromJson(Map<String, dynamic> json) =>
    SignUpResponse(
      SignUpDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignUpResponseToJson(SignUpResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

SignUpDataModel _$SignUpDataModelFromJson(Map<String, dynamic> json) =>
    SignUpDataModel(
      AddUserModel.fromJson(json['addUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignUpDataModelToJson(SignUpDataModel instance) =>
    <String, dynamic>{
      'addUser': instance.addUser,
    };

AddUserModel _$AddUserModelFromJson(Map<String, dynamic> json) => AddUserModel(
      json['id'] as String?,
      json['email'] as String?,
    );

Map<String, dynamic> _$AddUserModelToJson(AddUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
    };
