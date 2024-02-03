import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_role_response.g.dart';

@JsonSerializable()
class UserRoleResponse {
  UserRoleResponse(this.userRole);

  factory UserRoleResponse.fromJson(Map<String, dynamic> json) =>
      _$UserRoleResponseFromJson(json);

  @JsonKey(name: 'role')
  final String? userRole;
}
