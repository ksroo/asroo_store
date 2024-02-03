import 'package:asroo_store/core/service/graphql/api_service.dart';
import 'package:asroo_store/core/service/graphql/qraphql_queries/auth/auth_queries.dart';
import 'package:asroo_store/features/auth/data/models/login_request_body.dart';
import 'package:asroo_store/features/auth/data/models/login_response.dart';

class AuthDataSource {
  const AuthDataSource(this._graphql);

  final ApiService _graphql;

  //Login
  Future<LoginResponse> login({required LoginRequestBody body}) async {
    final response =
        await _graphql.login(AuthQueries().loginMapQuery(body: body));
    return response;
  }

  //UserRole
  // Future<UserRoleResourse> userRole() async {
  //   final response = await _graphql.userRole();
  //   return response;
  // }
}
