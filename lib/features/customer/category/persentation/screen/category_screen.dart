import 'package:asroo_store/core/common/widgets/customer_app_bar.dart';
import 'package:asroo_store/core/di/injection_container.dart';
import 'package:asroo_store/features/customer/category/persentation/bloc/get_category/get_category_bloc.dart';
import 'package:asroo_store/features/customer/category/persentation/refactors/category_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatgeoryScreen extends StatelessWidget {
  const CatgeoryScreen({required this.categoryInfo, super.key});

  final ({String categoryName, int categoryId}) categoryInfo;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<GetCategoryBloc>()
        ..add(
          GetCategoryEvent.getCategory(categoryId: categoryInfo.categoryId),
        ),
      child: Scaffold(
        appBar: CustomAppBar(title: categoryInfo.categoryName),
        body: const CategoryBody(),
      ),
    );
  }
}
