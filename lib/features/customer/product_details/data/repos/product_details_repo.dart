import 'package:asroo_store/core/service/graphql/api_result.dart';
import 'package:asroo_store/core/utils/app_strings.dart';
import 'package:asroo_store/features/customer/product_details/data/data_source/product_details_data_source.dart';
import 'package:asroo_store/features/customer/product_details/data/models/product_details_reponse.dart';

class ProductDetailsRepo {
  ProductDetailsRepo(this._dataSource);

  final ProductDetailsDataSource _dataSource;

  // Get Banners
  Future<ApiResult<ProductDetailsResponse>> productDetails(
      {required int id}) async {
    try {
      final response = await _dataSource.productDetails(id: id);
      return ApiResult.success(response);
    } catch (e) {
      return const ApiResult.failure(errorMessage);
    }
  }
}
