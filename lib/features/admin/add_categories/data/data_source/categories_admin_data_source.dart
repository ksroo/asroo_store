import 'package:asroo_store/core/service/graphql/api_service.dart';
import 'package:asroo_store/core/service/graphql/qraphql_queries/admin/categories_queries.dart';
import 'package:asroo_store/features/admin/add_categories/data/models/get_all_categories_reponse.dart';

class CategoriesAdminDataSource {
  const CategoriesAdminDataSource(this._graphql);

  final ApiService _graphql;

  // Get All categories admin

  Future<CategoriesGetAllResponse> getAllCategoriesAdmin() async {
    final response = await _graphql
        .getAllCategories(CategoriesQueries().getAllCategoriesMapQuery());
    return response;
  }
}
