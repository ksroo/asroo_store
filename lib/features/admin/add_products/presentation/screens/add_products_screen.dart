import 'package:asroo_store/core/common/widgets/admin_app_bar.dart';
import 'package:asroo_store/core/style/colors/colors_dark.dart';
import 'package:flutter/material.dart';

class AddProductsScreen extends StatelessWidget {
  const AddProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorsDark.mainColor,
      appBar: AdminAppBar(
        title: 'Products',
        isMain: true,
        backgroundColor: ColorsDark.mainColor,
      ),
      body: Center(
        child: Text(
          'Products Screen',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
