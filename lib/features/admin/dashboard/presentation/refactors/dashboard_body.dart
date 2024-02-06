import 'package:asroo_store/core/common/widgets/text_app.dart';
import 'package:asroo_store/core/extensions/context_extension.dart';
import 'package:asroo_store/core/style/images/app_images.dart';
import 'package:asroo_store/features/admin/dashboard/presentation/bloc/categories_number/categories_number_bloc.dart';
import 'package:asroo_store/features/admin/dashboard/presentation/bloc/products_number/products_number_bloc.dart';
import 'package:asroo_store/features/admin/dashboard/presentation/bloc/users_number/users_number_bloc.dart';
import 'package:asroo_store/features/admin/dashboard/presentation/widgets/dashboard_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashBoardBody extends StatelessWidget {
  const DashBoardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
      child: RefreshIndicator(
        onRefresh: () async {
          context
              .read<ProductsNumberBloc>()
              .add(const ProductsNumberEvent.getProductsNumber());
          context
              .read<CategoriesNumberBloc>()
              .add(const CategoriesNumberEvent.getCategoriesNumber());
          context
              .read<UsersNumberBloc>()
              .add(const UsersNumberEvent.getUsersNumber());
        },
        child: ListView(
          children: [
            //Products
            BlocBuilder<ProductsNumberBloc, ProductsNumberState>(
              builder: (context, state) {
                return state.when(
                  loading: () {
                    return const DashBoardContiner(
                      image: AppImages.productsDrawer,
                      number: '',
                      title: 'Products',
                      isLoading: true,
                    );
                  },
                  success: (productNumber) {
                    return DashBoardContiner(
                      image: AppImages.productsDrawer,
                      number: productNumber,
                      title: 'Products',
                      isLoading: false,
                    );
                  },
                  error: (errorMessage) {
                    return TextApp(
                      text: errorMessage,
                      theme: context.textStyle.copyWith(
                        color: Colors.red,
                        fontSize: 16.sp,
                      ),
                    );
                  },
                );
              },
            ),
            SizedBox(height: 20.h),
            //Categories
            BlocBuilder<CategoriesNumberBloc, CategoriesNumberState>(
              builder: (context, state) {
                return state.when(
                  loading: () {
                    return const DashBoardContiner(
                      image: AppImages.productsDrawer,
                      number: '',
                      title: 'Categories',
                      isLoading: true,
                    );
                  },
                  success: (categoryNumber) {
                    return DashBoardContiner(
                      image: AppImages.categoriesDrawer,
                      number: categoryNumber,
                      title: 'Categories',
                      isLoading: false,
                    );
                  },
                  error: (errorMessage) {
                    return TextApp(
                      text: errorMessage,
                      theme: context.textStyle.copyWith(
                        color: Colors.red,
                        fontSize: 16.sp,
                      ),
                    );
                  },
                );
              },
            ),
            SizedBox(height: 20.h),
            //Users
            BlocBuilder<UsersNumberBloc, UsersNumberState>(
              builder: (context, state) {
                return state.when(
                  loading: () {
                    return const DashBoardContiner(
                      image: AppImages.productsDrawer,
                      number: '',
                      title: 'Users',
                      isLoading: true,
                    );
                  },
                  success: (categoryNumber) {
                    return DashBoardContiner(
                      image: AppImages.usersDrawer,
                      number: categoryNumber,
                      title: 'Users',
                      isLoading: false,
                    );
                  },
                  error: (errorMessage) {
                    return TextApp(
                      text: errorMessage,
                      theme: context.textStyle.copyWith(
                        color: Colors.red,
                        fontSize: 16.sp,
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
