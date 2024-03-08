import 'package:asroo_store/core/service/graphql/api_service.dart';
import 'package:asroo_store/core/service/graphql/qraphql_queries/admin/categories_queries.dart';
import 'package:asroo_store/features/admin/add_categories/data/models/create_category_request_body.dart';
import 'package:asroo_store/features/admin/add_categories/data/models/create_category_response.dart';
import 'package:asroo_store/features/admin/add_categories/data/models/get_all_categories_reponse.dart';
import 'package:asroo_store/features/admin/add_categories/data/models/update_category_request_body.dart';

class CategoriesAdminDataSource {
  const CategoriesAdminDataSource(this._graphql);

  final ApiService _graphql;

  // Get All categories admin
  Future<CategoriesGetAllResponse> getAllCategoriesAdmin() async {
    final response = await _graphql
        .getAllCategories(CategoriesQueries().getAllCategoriesMapQuery());
    return response;
  }

//Create a new category
  Future<CreateCategoryResponse> createCategory(
    CreateCategoryRequestBody body,
  ) async {
    final response = await _graphql
        .createCategory(CategoriesQueries().createMapQuery(body: body));
    return response;
  }

//Delete category
  Future<void> deleteCategory(String categoryId) async {
    final response = await _graphql.deleteCategory(
      CategoriesQueries().deleteMapQuery(categoryId: categoryId),
    );
    return response;
  }

//Update category
  Future<void> updateCategory(UpdateCategoryRequestBody body) async {
    final response = await _graphql.updateCategory(
      CategoriesQueries().updateMapQuery(body: body),
    );
    return response;
  }
}
