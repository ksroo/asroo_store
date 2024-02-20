import 'package:asroo_store/core/service/graphql/api_service.dart';
import 'package:asroo_store/core/service/graphql/qraphql_queries/customer/home_queries.dart';
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
}
