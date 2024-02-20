import 'package:asroo_store/core/service/graphql/api_service.dart';
import 'package:asroo_store/core/service/graphql/qraphql_queries/admin/categories_queries.dart';
import 'package:asroo_store/core/service/graphql/qraphql_queries/admin/products_queries.dart';
import 'package:asroo_store/core/service/graphql/qraphql_queries/customer/home_queries.dart';
import 'package:asroo_store/features/admin/add_categories/data/models/get_all_categories_reponse.dart';
import 'package:asroo_store/features/admin/add_products/data/models/get_all_product_reponse.dart';
import 'package:asroo_store/features/customer/home/data/models/banners_response.dart';

class HomeDataSource {
  const HomeDataSource(this._graphql);

  final ApiService _graphql;

  // Get  Banners
  Future<BannersResponse> getBanners() async {
    final response =
        await _graphql.getBanners(HomeQueries().getBannersMapQuery());
    return response;
  }

  // Get All categories
  Future<CategoriesGetAllResponse> getAllCategories() async {
    final response = await _graphql
        .getAllCategories(CategoriesQueries().getAllCategoriesMapQuery());
    return response;
  }

  // Get All products
  Future<GetAllProductResponse> getAllProducts() async {
    final response = await _graphql
        .getAllProduct(ProductsQueries().getAllProductsMapQuery());
    return response;
  }
}
