import 'package:json_annotation/json_annotation.dart';





part 'create_product_request_body.g.dart';

@JsonSerializable()
class CreateProductRequestBody {
  CreateProductRequestBody({
    required this.title,
    required this.imageList,
    required this.categoryId,
    required this.description,
    required this.price,
  });

  final String title;
  final double price;
  final List<String> imageList;
  final String description;
  final double categoryId;

  Map<String, dynamic> toJson() => _$CreateProductRequestBodyToJson(this);
}
