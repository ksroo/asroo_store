import 'package:asroo_store/core/service/graphql/api_service.dart';
import 'package:asroo_store/core/service/graphql/qraphql_queries/admin/dashboard_queries.dart';
import 'package:asroo_store/features/admin/dashboard/data/models/categories_number_response.dart';
import 'package:asroo_store/features/admin/dashboard/data/models/porducts_number_response.dart';
import 'package:asroo_store/features/admin/dashboard/data/models/users_number_response.dart';

class DashBoardDataSource {
  const DashBoardDataSource(this._graphql);

  final ApiService _graphql;

//Get Number of Products
  Future<ProductsNumberResponse> numberOfProducts() async {
    final response = await _graphql
        .numberOfProducts(DashBoardQueries().numberOfProductsMapQuery());
    return response;
  }

//Get Number of Categories
  Future<CategoriesNumberResponse> numberOfCategories() async {
    final response = await _graphql
        .numberOfCategories(DashBoardQueries().numberOfCategoriesMapQuery());
    return response;
  }

//Get Number of Users
  Future<UsersNumberResponse> numberOfUsers() async {
    final response = await _graphql
        .numberOfUsers(DashBoardQueries().numberOfUsersMapQuery());
    return response;
  }
}
