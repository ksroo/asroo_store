import 'package:freezed_annotation/freezed_annotation.dart';

part 'porducts_number_response.g.dart';

@JsonSerializable()
class ProductsNumberResponse {
  ProductsNumberResponse(this.data);

  factory ProductsNumberResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductsNumberResponseFromJson(json);

  final ProductsNumberData data;

  String get produtcsNumbers {
    if (data.productsList.isEmpty) {
      return '0';
    }
    return data.productsList.length.toString();
  }
}

@JsonSerializable()
class ProductsNumberData {
  ProductsNumberData(this.productsList);
  factory ProductsNumberData.fromJson(Map<String, dynamic> json) =>
      _$ProductsNumberDataFromJson(json);

  @JsonKey(name: 'products')
  final List<ProductsNumberModel> productsList;
}

@JsonSerializable()
class ProductsNumberModel {
  ProductsNumberModel(this.title);

  factory ProductsNumberModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsNumberModelFromJson(json);

  final String? title;
}
