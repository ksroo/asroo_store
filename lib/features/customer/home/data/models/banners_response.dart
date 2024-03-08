import 'package:asroo_store/core/utils/app_strings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'banners_response.g.dart';

@JsonSerializable()
class BannersResponse {
  BannersResponse(this.data);

  factory BannersResponse.fromJson(Map<String, dynamic> json) =>
      _$BannersResponseFromJson(json);

  final BannersData data;

// to get banners list;
  List<String> get bannerImageList {
    final list = data.bannersModel
        .where((e) => e.title!.contains(searchBannersKeyWord))
        .toList();

    if (list.isEmpty) {
      return [];
    }
    return list.first.images;
  }
}

@JsonSerializable()
class BannersData {
  BannersData(this.bannersModel);

  factory BannersData.fromJson(Map<String, dynamic> json) =>
      _$BannersDataFromJson(json);

  @JsonKey(name: 'products')
  final List<BannersModel> bannersModel;
}

@JsonSerializable()
class BannersModel {
  BannersModel(
    this.images,
    this.title,
  );
  factory BannersModel.fromJson(Map<String, dynamic> json) =>
      _$BannersModelFromJson(json);

  final String? title;
  final List<String> images;
}
