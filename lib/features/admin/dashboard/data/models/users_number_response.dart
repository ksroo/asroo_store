import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_number_response.g.dart';

@JsonSerializable()
class UsersNumberResponse {
  UsersNumberResponse(this.data);

  factory UsersNumberResponse.fromJson(Map<String, dynamic> json) =>
      _$UsersNumberResponseFromJson(json);

  final UsersNumberData data;

  String get usersNumbers {
    if (data.usersList.isEmpty) {
      return '0';
    }
    return data.usersList.length.toString();
  }
}

@JsonSerializable()
class UsersNumberData {
  UsersNumberData(this.usersList);
  factory UsersNumberData.fromJson(Map<String, dynamic> json) =>
      _$UsersNumberDataFromJson(json);

  @JsonKey(name: 'users')
  final List<UsersNumberModel> usersList;
}

@JsonSerializable()
class UsersNumberModel {
  UsersNumberModel(this.name);

  factory UsersNumberModel.fromJson(Map<String, dynamic> json) =>
      _$UsersNumberModelFromJson(json);

  final String? name;
}
