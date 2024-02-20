import 'package:asroo_store/core/service/graphql/api_result.dart';
import 'package:asroo_store/core/utils/app_strings.dart';
import 'package:asroo_store/features/customer/home/data/data_source/home_data_source.dart';
import 'package:asroo_store/features/customer/home/data/models/banners_response.dart';

class HomeRepo {
  HomeRepo(this._dataSource);

  final HomeDataSource _dataSource;

  // Get Banners
  Future<ApiResult<BannersResponse>> getBanners() async {
    try {
      final response = await _dataSource.getBanners();
      return ApiResult.success(response);
    } catch (e) {
      return const ApiResult.failure(errorMessage);
    }
  }
}
