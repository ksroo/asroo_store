import 'package:asroo_store/features/admin/add_notifications/presentation/widgets/create/create_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddNotificationBody extends StatelessWidget {
  const AddNotificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
      child: Column(
        children: const [
          // create notification title
          CreateNotification(),
        ],
      ),
    );
  }
}
