import 'package:asroo_store/core/common/widgets/admin_app_bar.dart';
import 'package:asroo_store/core/di/injection_container.dart';
import 'package:asroo_store/core/style/colors/colors_dark.dart';
import 'package:asroo_store/features/admin/add_categories/presentation/bloc/delete_category/delete_category_bloc.dart';
import 'package:asroo_store/features/admin/add_categories/presentation/bloc/get_all_admin_categories/get_all_admin_categories_bloc.dart';
import 'package:asroo_store/features/admin/add_categories/presentation/refactors/add_categories_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddCategoriesScreen extends StatelessWidget {
  const AddCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<GetAllAdminCategoriesBloc>()
            ..add(
              const GetAllAdminCategoriesEvent.fetchAdminCategories(
                isNotLoading: true,
              ),
            ),
        ),
        BlocProvider(
          create: (context) => sl<DeleteCategoryBloc>(),
        ),
      ],
      child: const Scaffold(
        backgroundColor: ColorsDark.mainColor,
        appBar: AdminAppBar(
          title: 'Categories',
          isMain: true,
          backgroundColor: ColorsDark.mainColor,
        ),
        body: AddCategoriesBody(),
      ),
    );
  }
}
