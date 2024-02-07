import 'package:asroo_store/core/app/app_cubit/app_cubit.dart';
import 'package:asroo_store/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:asroo_store/core/app/upload_image/data_source/upload_image_data_source.dart';
import 'package:asroo_store/core/app/upload_image/repo/upload_image_repo.dart';
import 'package:asroo_store/core/service/graphql/api_service.dart';
import 'package:asroo_store/core/service/graphql/dio_factory.dart';
import 'package:asroo_store/features/admin/add_categories/data/data_source/categories_admin_data_source.dart';
import 'package:asroo_store/features/admin/add_categories/data/repos/categoreis_admin_repos.dart';
import 'package:asroo_store/features/admin/add_categories/presentation/bloc/create_category/create_category_bloc.dart';
import 'package:asroo_store/features/admin/add_categories/presentation/bloc/get_all_admin_categories/get_all_admin_categories_bloc.dart';
import 'package:asroo_store/features/admin/dashboard/data/data_soruce/dashboard_data_source.dart';
import 'package:asroo_store/features/admin/dashboard/data/repos/dashboard_repo.dart';
import 'package:asroo_store/features/admin/dashboard/presentation/bloc/categories_number/categories_number_bloc.dart';
import 'package:asroo_store/features/admin/dashboard/presentation/bloc/products_number/products_number_bloc.dart';
import 'package:asroo_store/features/admin/dashboard/presentation/bloc/users_number/users_number_bloc.dart';
import 'package:asroo_store/features/auth/data/data_source/auth_data_source.dart';
import 'package:asroo_store/features/auth/data/repos/auth_repo.dart';
import 'package:asroo_store/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> setupInjector() async {
  await _initCore();
  await _initAuth();
  await _initDashBoard();
  await _initCategoriesAdmin();
}

Future<void> _initCore() async {
  final dio = DioFactory.getDio();
  final navigatorKey = GlobalKey<NavigatorState>();

  sl
    ..registerFactory(AppCubit.new)
    ..registerLazySingleton<ApiService>(() => ApiService(dio))
    ..registerSingleton<GlobalKey<NavigatorState>>(navigatorKey)
    ..registerFactory(() => UploadImageCubit(sl()))
    ..registerLazySingleton(() => UploadImageRepo(sl()))
    ..registerLazySingleton(() => UploadImageDataSource(sl()));
}

Future<void> _initAuth() async {
  sl
    ..registerFactory(() => AuthBloc(sl()))
    ..registerLazySingleton(() => AuthRepos(sl()))
    ..registerLazySingleton(() => AuthDataSource(sl()));
}

Future<void> _initDashBoard() async {
  sl
    ..registerLazySingleton(() => DashBoardDataSource(sl()))
    ..registerLazySingleton(() => DashBoardRepo(sl()))
    ..registerFactory(() => ProductsNumberBloc(sl()))
    ..registerFactory(() => CategoriesNumberBloc(sl()))
    ..registerFactory(() => UsersNumberBloc(sl()));
}

Future<void> _initCategoriesAdmin() async {
  sl
    ..registerLazySingleton(() => CategoreisAdminRepo(sl()))
    ..registerLazySingleton(() => CategoriesAdminDataSource(sl()))
    ..registerFactory(() => GetAllAdminCategoriesBloc(sl()))
    ..registerFactory(() => CreateCategoryBloc(sl()));
}
