import 'package:asroo_store/core/service/graphql/api_service.dart';
import 'package:asroo_store/core/service/graphql/qraphql_queries/customer/category_queries.dart';
import 'package:asroo_store/features/admin/add_products/data/models/get_all_product_reponse.dart';

class CatgeoryDataSource {
  const CatgeoryDataSource(this._graphql);

  final ApiService _graphql;

  //get catgeory
  Future<GetAllProductResponse> getCategory({required int categoryId}) async {
    final response = await _graphql.getCategory(
        CategoryQueries().getCatgeoryMapQuery(categoryId: categoryId));
    return response;
  }
}
