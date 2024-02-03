import 'package:freezed_annotation/freezed_annotation.dart';



part 'user_role_response.g.dart';

@JsonSerializable()
class UserRoleResourse {
  UserRoleResourse(this.userRole);

  factory UserRoleResourse.fromJson(Map<String, dynamic> json) =>
      _$UserRoleResourseFromJson(json);

  @JsonKey(name: 'role')
  final String? userRole;
}
