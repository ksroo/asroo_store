import 'package:asroo_store/core/common/widgets/admin_app_bar.dart';
import 'package:asroo_store/core/style/colors/colors_dark.dart';
import 'package:asroo_store/features/admin/add_notifications/presentation/refactors/add_notification_body.dart';
import 'package:flutter/material.dart';

class AddNotificationsScreen extends StatelessWidget {
  const AddNotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorsDark.mainColor,
      appBar: AdminAppBar(
        title: 'Notifications',
        isMain: true,
        backgroundColor: ColorsDark.mainColor,
      ),
      body: AddNotificationBody(),
    );
  }
}
