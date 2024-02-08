import 'package:asroo_store/core/service/graphql/api_service.dart';
import 'package:asroo_store/core/service/graphql/qraphql_queries/admin/products_queries.dart';
import 'package:asroo_store/features/admin/add_products/data/models/get_all_product_reponse.dart';

class ProductsAdminDataSource {
  const ProductsAdminDataSource(this._graphql);

  final ApiService _graphql;

  // Get All products admin
  Future<GetAllProductResponse> getAllProductsAdmin() async {
    final response = await _graphql
        .getAllProduct(ProductsQueries().getAllProductsMapQuery());
    return response;
  }
}
