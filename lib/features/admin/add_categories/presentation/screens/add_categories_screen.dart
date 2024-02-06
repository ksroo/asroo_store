import 'package:asroo_store/core/common/widgets/admin_app_bar.dart';
import 'package:asroo_store/core/style/colors/colors_dark.dart';
import 'package:asroo_store/features/admin/add_categories/presentation/refactors/add_categories_body.dart';
import 'package:flutter/material.dart';

class AddCategoriesScreen extends StatelessWidget {
  const AddCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorsDark.mainColor,
      appBar: AdminAppBar(
        title: 'Categories',
        isMain: true,
        backgroundColor: ColorsDark.mainColor,
      ),
      body: AddCategoriesBody(),
    );
  }
}
