import 'package:asroo_store/core/service/push_notification/firebase_cloud_messaging.dart';

class AddNotificationDataSource {
  // Send Notification Topics to users
  Future<void> sendNotifications({
    required String body,
    required String title,
    required int productId,
  }) async {
    final response = await FirebaseCloudMessaging().sendTopicNotification(
      body: body,
      title: title,
      productId: productId,
    );
    return response;
  }
}
