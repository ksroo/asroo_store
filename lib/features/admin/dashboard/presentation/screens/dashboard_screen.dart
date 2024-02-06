import 'package:asroo_store/core/common/widgets/admin_app_bar.dart';
import 'package:asroo_store/core/style/colors/colors_dark.dart';
import 'package:asroo_store/features/admin/dashboard/presentation/refactors/dashboard_body.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: ColorsDark.mainColor,
        appBar: AdminAppBar(
          title: 'DashBoard',
          isMain: true,
          backgroundColor: ColorsDark.mainColor,
        ),
        body: DashBoardBody());
  }
}
