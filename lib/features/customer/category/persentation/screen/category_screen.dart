import 'package:asroo_store/core/common/widgets/customer_app_bar.dart';
import 'package:asroo_store/features/customer/category/persentation/refactors/category_body.dart';
import 'package:flutter/material.dart';

class CatgeoryScreen extends StatelessWidget {
  const CatgeoryScreen({required this.categoryInfo, super.key});

  final ({String categoryName, int categoryId}) categoryInfo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: categoryInfo.categoryName),
      body: CategoryBody(),
    );
  }
}
