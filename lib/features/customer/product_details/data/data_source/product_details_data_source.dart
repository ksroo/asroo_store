import 'package:asroo_store/core/service/graphql/api_service.dart';
import 'package:asroo_store/core/service/graphql/qraphql_queries/customer/product_details_queries.dart';
import 'package:asroo_store/features/customer/product_details/data/models/product_details_reponse.dart';

class ProductDetailsDataSource {
  const ProductDetailsDataSource(this._graphql);

  final ApiService _graphql;

  // Proudtc Details
  Future<ProductDetailsResponse> productDetails({required int id}) async {
    final response = await _graphql.productDetails(
        ProductDetailsQueries().getProductDetailsMapQuery(id: id));
    return response;
  }
}
