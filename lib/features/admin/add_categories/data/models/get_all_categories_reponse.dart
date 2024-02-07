import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_categories_reponse.g.dart';

@JsonSerializable()
class CategoriesGetAllResponse {
  CategoriesGetAllResponse(this.data);

  factory CategoriesGetAllResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoriesGetAllResponseFromJson(json);

  final CategoriesGetAllData data;

  List<CategoriesGetAllModel> get categoriesGetAlls {
    if (data.categoriesList.isEmpty) {
      return [];
    }
    return data.categoriesList;
  }
}

@JsonSerializable()
class CategoriesGetAllData {
  CategoriesGetAllData(this.categoriesList);
  factory CategoriesGetAllData.fromJson(Map<String, dynamic> json) =>
      _$CategoriesGetAllDataFromJson(json);

  @JsonKey(name: 'categories')
  final List<CategoriesGetAllModel> categoriesList;
}

@JsonSerializable()
class CategoriesGetAllModel {
  CategoriesGetAllModel(this.name, this.id, this.image);

  factory CategoriesGetAllModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesGetAllModelFromJson(json);

  final String? id;
  final String? name;
  final String? image;
}
