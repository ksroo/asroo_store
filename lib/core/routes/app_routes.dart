import 'package:asroo_store/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:asroo_store/core/common/screens/under_build_screen.dart';
import 'package:asroo_store/core/di/injection_container.dart';
import 'package:asroo_store/core/routes/base_routes.dart';
import 'package:asroo_store/features/admin/home_admin.dart';
import 'package:asroo_store/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:asroo_store/features/auth/presentation/screens/login_screen.dart';
import 'package:asroo_store/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:asroo_store/features/customer/home_customer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoutes {
  static const String login = 'login';
  static const String signUp = 'signUp';
  static const String homeAdmin = 'homeAdmin';
  static const String homeCustomer = 'homeCustomer';

  static Route<void> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case login:
        return BaseRoute(
          page: BlocProvider(
            create: (context) => sl<AuthBloc>(),
            child: const LoginScreen(),
          ),
        );
      case signUp:
        return BaseRoute(
          page: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => sl<UploadImageCubit>(),
              ),
              BlocProvider(
                create: (context) => sl<AuthBloc>(),
              ),
            ],
            child: const SignUpScreen(),
          ),
        );
      case homeAdmin:
        return BaseRoute(page: const HomeAdminScreen());
      case homeCustomer:
        return BaseRoute(page: const HomeCustomerScreen());

      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
