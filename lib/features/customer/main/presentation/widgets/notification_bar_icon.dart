import 'package:asroo_store/core/common/widgets/text_app.dart';
import 'package:asroo_store/core/extensions/context_extension.dart';
import 'package:asroo_store/core/style/fonts/font_weight_helper.dart';
import 'package:asroo_store/core/style/images/app_images.dart';
import 'package:asroo_store/features/customer/notifications/data/models/notification_model.dart';
import 'package:asroo_store/features/customer/notifications/persentation/controller/notifcaiton_controller.dart';
import 'package:badges/badges.dart' as badge;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NotificationBarIcon extends StatelessWidget {
  const NotificationBarIcon({required this.isSelected, super.key});

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<NotificationModel>>(
      stream: NotificationController().getNotificationList(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const SizedBox.shrink();
        }

        final numberOfNotifi =
            snapshot.data!.where((e) => e.isSeen == false).length;
        return badge.Badge(
          showBadge: numberOfNotifi != 0,
          badgeAnimation: const badge.BadgeAnimation.scale(),
          position: badge.BadgePosition.topEnd(end: -4.w, top: -8.h),
          badgeContent: TextApp(
            text: numberOfNotifi >= 9 ? '9+' : numberOfNotifi.toString(),
            theme: context.textStyle.copyWith(
              color: Colors.white,
              fontWeight: FontWeightHelper.bold,
              fontSize: 11.sp,
            ),
            textAlign: TextAlign.center,
          ),
          badgeStyle: badge.BadgeStyle(
            badgeColor: Colors.pink,
            padding: EdgeInsets.all(5.h),
            elevation: 0,
          ),
          child: SvgPicture.asset(
            AppImages.notificationIcon,
            color: isSelected ? context.color.navBarSelectedTab : Colors.grey,
            height: 25.h,
          ).animate(target: isSelected ? 1 : 0).scaleXY(end: 1.2),
        );
      },
    );
  }
}
