import 'package:asroo_store/core/di/injection_container.dart';
import 'package:asroo_store/core/extensions/context_extension.dart';
import 'package:asroo_store/core/routes/app_routes.dart';
import 'package:asroo_store/core/service/push_notification/local_notfication_service.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class FirebaseMessagingNavigate {
  // forground
  static Future<void> forGroundHandler(RemoteMessage? message) async {
    if (message != null) {
      await LocalNotificationService.showSimpleNotification(
        title: message.notification!.title ?? '',
        body: message.notification!.body ?? '',
        payload: message.data['productId'].toString(),
      );
    }
  }

  // background
  static Future<void> backGroundHandler(RemoteMessage? message) async {
    if (message != null) {
      await _navigate(message);
    }
  }

  // terminated
  static Future<void> terminatedHandler(RemoteMessage? message) async {
    if (message != null) {
      await _navigate(message);
    }
  }

  static Future<void> _navigate(RemoteMessage message) async {
    await sl<GlobalKey<NavigatorState>>().currentState!.context.pushName(
          AppRoutes.productDetails,
          arguments: int.parse(message.data['productId'].toString()),
        );
  }
}
