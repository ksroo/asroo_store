import 'package:asroo_store/core/common/widgets/text_app.dart';
import 'package:asroo_store/core/extensions/context_extension.dart';
import 'package:asroo_store/core/style/fonts/font_weight_helper.dart';
import 'package:asroo_store/core/style/images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    required this.title,
    required this.body,
    required this.createdAt,
    required this.isSeen,
    required this.onTapSelected,
    required this.onTapRemoved,
    super.key,
  });

  final String title;
  final String body;
  final String createdAt;
  final bool isSeen;
  final VoidCallback onTapSelected;
  final VoidCallback onTapRemoved;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      isThreeLine: true,
      onTap: onTapSelected,
      leading: Container(
        height: 50.h,
        width: 50.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSeen ? Colors.grey : Colors.white,
            width: 1.5,
          ),
        ),
        child: Center(
          child: SvgPicture.asset(
            AppImages.notificationIcon,
            color: Colors.pink,
            height: 30.h,
          ),
        ),
      ),
      //Title
      title: TextApp(
        text: title,
        theme: context.textStyle.copyWith(
          fontSize: 12.sp,
          fontWeight: FontWeightHelper.medium,
          color: isSeen ? Colors.grey : Colors.white,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5.h),
          //Body
          TextApp(
            text: body,
            theme: context.textStyle.copyWith(
              fontSize: 12.sp,
              fontWeight: FontWeightHelper.medium,
              color: isSeen ? Colors.grey : Colors.white,
            ),
          ),
          SizedBox(height: 5.h),
          //created at
          TextApp(
            text: createdAt,
            theme: context.textStyle.copyWith(
              fontSize: 12.sp,
              fontWeight: FontWeightHelper.medium,
              color: isSeen ? Colors.grey : Colors.green,
            ),
          ),
          SizedBox(height: 5.h),
          Divider(
            color: isSeen ? Colors.grey : Colors.white,
          ),
        ],
      ),
      trailing: GestureDetector(
        onTap: onTapRemoved,
        child: const Icon(
          Icons.close,
          color: Colors.yellow,
          size: 20,
        ),
      ),
    );
  }
}
