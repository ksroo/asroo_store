import 'package:freezed_annotation/freezed_annotation.dart';



part 'sign_up_response.g.dart';

@JsonSerializable()
class SignUpResponse {
  SignUpResponse(this.data);
  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);

  final SignUpDataModel data;
}

@JsonSerializable()
class SignUpDataModel {
  SignUpDataModel(this.addUser);

  factory SignUpDataModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpDataModelFromJson(json);

  final AddUserModel addUser;
}

@JsonSerializable()
class AddUserModel {
  AddUserModel(this.id, this.email);

  factory AddUserModel.fromJson(Map<String, dynamic> json) =>
      _$AddUserModelFromJson(json);

  final String? id;
  final String? email;
}
