import 'package:asroo_store/core/extensions/context_extension.dart';
import 'package:asroo_store/core/service/push_notification/firebase_cloud_messaging.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class HomeCustomerScreen extends StatelessWidget {
  const HomeCustomerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.mainColor,
      appBar: AppBar(
        backgroundColor: context.color.mainColor,
        title: const Text(
          'Home Customer',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () async {
                await FirebaseCloudMessaging().subscribeNotification();
              },
              child: const Text(
                'Subscribe',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            TextButton(
              onPressed: () async {
                await FirebaseCloudMessaging().unSubscribeNotification();
              },
              child: const Text(
                'UnSubscribe',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
