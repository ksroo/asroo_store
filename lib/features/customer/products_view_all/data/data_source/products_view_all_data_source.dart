import 'package:asroo_store/core/service/graphql/api_service.dart';
import 'package:asroo_store/core/service/graphql/qraphql_queries/customer/products_view_all_queries.dart';
import 'package:asroo_store/features/admin/add_products/data/models/get_all_product_reponse.dart';

class ProductsViewAllDataSource {
  const ProductsViewAllDataSource(this._graphql);

  final ApiService _graphql;

  // Products View ALl
  Future<GetAllProductResponse> getProductsViewAll({
    required int offset,
  }) async {
    final response = await _graphql.getProductsViewAll(
      ProductViewAllQueries().getProductsViewAllMapQuery(offset: offset),
    );
    return response;
  }
}
