import 'package:asroo_store/core/service/graphql/api_result.dart';
import 'package:asroo_store/core/utils/app_strings.dart';
import 'package:asroo_store/features/admin/users/data/data_sources/users_data_source.dart';
import 'package:asroo_store/features/admin/users/data/models/get_all_users_response.dart';

class UsersRepo {
  UsersRepo(this._dataSource);

  final UserDataSource _dataSource;

  // Get All Users
  Future<ApiResult<GetAllUsersResponse>> getAllUsers() async {
    try {
      final response = await _dataSource.getAllUsers();
      return ApiResult.success(response);
    } catch (error) {
      return const ApiResult.failure(errorMessage);
    }
  }

  // Delete User
  Future<ApiResult<void>> deleteUser({required String userId}) async {
    try {
      final response = await _dataSource.deleteUser(userId: userId);
      return ApiResult.success(response);
    } catch (error) {
      return const ApiResult.failure(errorMessage);
    }
  }
}
