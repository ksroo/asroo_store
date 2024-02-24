import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_details_reponse.g.dart';

@JsonSerializable()
class ProductDetailsResponse {
  ProductDetailsResponse(this.data);

  factory ProductDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsResponseFromJson(json);

  final ProductDetailsData data;
}

@JsonSerializable()
class ProductDetailsData {
  ProductDetailsData(this.productModel);

  factory ProductDetailsData.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsDataFromJson(json);

  @JsonKey(name: 'product')
  final ProductDetailsModel productModel;
}

@JsonSerializable()
class ProductDetailsModel {
  ProductDetailsModel(
    this.title,
    this.price,
    this.images,
    this.description,
    this.category,
    this.id,
  );

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsModelFromJson(json);

  final String? id;
  final String? title;
  final double? price;
  final List<String> images;
  final String? description;
  final CategoryDateilaModel? category;
}

@JsonSerializable()
class CategoryDateilaModel {
  CategoryDateilaModel(this.name);

  factory CategoryDateilaModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryDateilaModelFromJson(json);

  final String name;
}
