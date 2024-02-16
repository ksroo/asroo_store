import 'package:asroo_store/core/common/widgets/admin_app_bar.dart';
import 'package:asroo_store/core/service/push_notification/firebase_cloud_messaging.dart';
import 'package:asroo_store/core/style/colors/colors_dark.dart';
import 'package:flutter/material.dart';

class AddNotificationsScreen extends StatelessWidget {
  const AddNotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsDark.mainColor,
      appBar: AdminAppBar(
        title: 'Notifications',
        isMain: true,
        backgroundColor: ColorsDark.mainColor,
      ),
      body: Center(
        child: InkWell(
          onTap: () async {
            await FirebaseCloudMessaging().sendTopicNotification();
          },
          child: Text(
            'Notifications Screen',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
