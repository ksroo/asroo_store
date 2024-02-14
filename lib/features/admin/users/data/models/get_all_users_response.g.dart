// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_users_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllUsersResponse _$GetAllUsersResponseFromJson(Map<String, dynamic> json) =>
    GetAllUsersResponse(
      UserData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetAllUsersResponseToJson(
        GetAllUsersResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      (json['users'] as List<dynamic>)
          .map((e) => UsersModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'users': instance.usersList,
    };

UsersModel _$UsersModelFromJson(Map<String, dynamic> json) => UsersModel(
      json['name'] as String?,
      json['email'] as String?,
      json['id'] as String?,
    );

Map<String, dynamic> _$UsersModelToJson(UsersModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'id': instance.id,
    };
