import 'package:asroo_store/core/service/graphql/api_result.dart';
import 'package:asroo_store/core/utils/app_strings.dart';
import 'package:asroo_store/features/admin/add_products/data/models/get_all_product_reponse.dart';
import 'package:asroo_store/features/customer/products_view_all/data/data_source/products_view_all_data_source.dart';

class ProductsViewAllRepo {
  ProductsViewAllRepo(this._dataSource);

  final ProductsViewAllDataSource _dataSource;

  // Get Banners
  Future<ApiResult<GetAllProductResponse>> getProductsViewAll({
    required int offset,
  }) async {
    try {
      final response = await _dataSource.getProductsViewAll(offset: offset);
      return ApiResult.success(response);
    } catch (e) {
      return const ApiResult.failure(errorMessage);
    }
  }
}
