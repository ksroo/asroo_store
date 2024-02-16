import 'package:asroo_store/core/extensions/context_extension.dart';
import 'package:asroo_store/core/service/push_notification/firebase_cloud_messaging.dart';
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
        child: ValueListenableBuilder(
          valueListenable: FirebaseCloudMessaging().isNotificationSubscribe,
          builder: (_, value, __) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  value ? 'Subscribe' : 'Unsubscribe',
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 20),
                Transform.scale(
                  scale: 1.4,
                  child: Switch.adaptive(
                    value: value,
                    inactiveTrackColor: const Color(0xff262626),
                    activeColor: Colors.green,
                    onChanged: (value) async {
                      await FirebaseCloudMessaging()
                          .controllerForUserSubscribe();
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
