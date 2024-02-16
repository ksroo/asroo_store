import 'package:asroo_store/core/app/env.variables.dart';
import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class FirebaseCloudMessaging {
  factory FirebaseCloudMessaging() => _instance;

  FirebaseCloudMessaging._();

  static final FirebaseCloudMessaging _instance = FirebaseCloudMessaging._();

  static const String subscribeKey = 'asroo-store';

  /// subscribe notification

  Future<void> subscribeNotification() async {
    await FirebaseMessaging.instance.subscribeToTopic(subscribeKey);
    debugPrint('====🔔 Notification Subscribed 🔔=====');
  }

  /// unsubscribe notification

  Future<void> unSubscribeNotification() async {
    await FirebaseMessaging.instance.unsubscribeFromTopic(subscribeKey);
    debugPrint('====🔕 Notification Unsubscribed 🔕=====');
  }

// send notifcation with api
  Future<void> sendTopicNotification({
    required String title,
    required String body,
    required int productId,
  }) async {
    try {
      final response = await Dio().post<dynamic>(
        EnvVariable.instance.notifcationBaseUrl,
        options: Options(
          validateStatus: (_) => true,
          contentType: Headers.jsonContentType,
          responseType: ResponseType.json,
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'key=${EnvVariable.instance.firebaseKey}',
          },
        ),
        data: {
          'to': '/topics/$subscribeKey',
          'notification': {
            'title': title,
            'body': body,
          },
          'data': {'productId': productId},
        },
      );

      debugPrint('Notification Created => ${response.data}');
    } catch (e) {
      debugPrint('Notification Error => $e');
    }
  }
}
