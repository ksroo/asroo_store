import 'package:asroo_store/features/admin/add_notifications/presentation/widgets/add_notification_item.dart';
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
        children: [
          // create notification title
          const CreateNotification(),
          //get all notifications
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: SizedBox(height: 20.h),
                ),
                SliverToBoxAdapter(
                  child: ListView.separated(
                    itemCount: 3,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return AddNotificationItem();
                    },
                    separatorBuilder: (context, index) =>
                        SizedBox(height: 15.h),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
