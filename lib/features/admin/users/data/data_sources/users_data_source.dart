import 'package:asroo_store/core/service/graphql/api_service.dart';
import 'package:asroo_store/core/service/graphql/qraphql_queries/admin/users_queries.dart';
import 'package:asroo_store/features/admin/users/data/models/get_all_users_response.dart';

class UserDataSource {
  const UserDataSource(this._graphql);

  final ApiService _graphql;

  //Get Number of Products
  Future<GetAllUsersResponse> getAllUsers() async {
    final response =
        await _graphql.getAllUsers(UsersQueries().getAllUsersMapQuery());
    return response;
  }

  //Delete User
  Future<void> deleteUser({required String userId}) async {
    final response = await _graphql
        .deleteUser(UsersQueries().deleteUserMapQuery(userId: userId));
    return response;
  }
}
