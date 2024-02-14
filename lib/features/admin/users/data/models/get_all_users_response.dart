import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_users_response.g.dart';

@JsonSerializable()
class GetAllUsersResponse {
  GetAllUsersResponse(this.data);

  factory GetAllUsersResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllUsersResponseFromJson(json);

  final UserData data;


  
}

@JsonSerializable()
class UserData {
  UserData(this.usersList);

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  @JsonKey(name: 'users')
  final List<UsersModel> usersList;
}

@JsonSerializable()
class UsersModel {
  UsersModel(this.name, this.email, this.id);

  factory UsersModel.fromJson(Map<String, dynamic> json) =>
      _$UsersModelFromJson(json);

  final String? name;
  final String? email;
  final String? id;
}
