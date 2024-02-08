import 'package:freezed_annotation/freezed_annotation.dart';





part 'update_category_request_body.g.dart';

@JsonSerializable()
class UpdateCategoryRequestBody {
  UpdateCategoryRequestBody({
    required this.name,
    required this.image,
    required this.id,
  });

  final String name;
  final String image;
  final String id;

  Map<String, dynamic> toJson() => _$UpdateCategoryRequestBodyToJson(this);
}
