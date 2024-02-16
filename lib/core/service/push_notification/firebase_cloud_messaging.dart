import 'package:asroo_store/core/app/env.variables.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class FirebaseCloudMessaging {
  factory FirebaseCloudMessaging() => _instance;

  FirebaseCloudMessaging._();

  static final FirebaseCloudMessaging _instance = FirebaseCloudMessaging._();

// send notifcation with api
  Future<void> sendTopicNotification() async {
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
          'to':
              'dypyF6PXQzuNvL5TJXNjj8:APA91bHRH4zf_LAvBW74CXhFS_aarEKjWRdDUTpNyOxteZxHqtohbUVosTy6wItRONsAhgZ8XIQTkSbuMBnaYg2IA2q0FKohSlHteOh17WmBI_gNuIlYu8qyn2DF2f7jWypCoafTwLsu',
          'notification': {
            'title': 'Check this Mobile (title)',
            'body': 'Rich Notification testing (body)',
          },
        },
      );

      debugPrint('Notification Created => ${response.data}');
    } catch (e) {
      debugPrint('Notification Error => $e');
    }
  }
}
