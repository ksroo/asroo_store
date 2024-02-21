import 'package:asroo_store/core/service/graphql/api_result.dart';
import 'package:asroo_store/core/utils/app_strings.dart';
import 'package:asroo_store/features/admin/add_products/data/models/get_all_product_reponse.dart';
import 'package:asroo_store/features/customer/category/data/data_source/category_data_source.dart';

class CatgeoryRepo {
  const CatgeoryRepo(this._dataSource);

  final CatgeoryDataSource _dataSource;

  // Get Category
  Future<ApiResult<GetAllProductResponse>> getCategory({
    required int categoryId,
  }) async {
    try {
      final response = await _dataSource.getCategory(categoryId: categoryId);
      return ApiResult.success(response);
    } catch (e) {
      return const ApiResult.failure(errorMessage);
    }
  }
}
