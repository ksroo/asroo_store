import 'package:freezed_annotation/freezed_annotation.dart';



part 'create_category_response.g.dart';

@JsonSerializable()
class CreateCategoryResponse {
  CreateCategoryResponse(this.data);

  factory CreateCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateCategoryResponseFromJson(json);

  final CreateCategoryData data;
}

@JsonSerializable()
class CreateCategoryData {
  CreateCategoryData(this.categoryModel);

  factory CreateCategoryData.fromJson(Map<String, dynamic> json) =>
      _$CreateCategoryDataFromJson(json);

  @JsonKey(name: 'addCategory')
  final CreateCategoryModel categoryModel;
}

@JsonSerializable()
class CreateCategoryModel {
  CreateCategoryModel(this.name, this.id, this.image);

  factory CreateCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CreateCategoryModelFromJson(json);

  final String? id;
  final String? name;
  final String? image;
}
