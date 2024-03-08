import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_role_response.g.dart';

@JsonSerializable()
class UserRoleResponse {
  UserRoleResponse(
    this.userRole,
    this.userId,
    this.userEmail,
    this.userName,
    this.userImage,
  );

  factory UserRoleResponse.fromJson(Map<String, dynamic> json) =>
      _$UserRoleResponseFromJson(json);

  @JsonKey(name: 'role')
  final String? userRole;
  @JsonKey(name: 'id')
  final int? userId;

  @JsonKey(name: 'name')
  final String? userName;

  @JsonKey(name: 'email')
  final String? userEmail;

  @JsonKey(name: 'avatar')
  final String? userImage;
}
