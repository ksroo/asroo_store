import 'package:asroo_store/core/common/widgets/customer_app_bar.dart';
import 'package:asroo_store/features/customer/search/presentation/refactors/search_body.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Search'),
      body: SearchBody(),
    );
  }
}
