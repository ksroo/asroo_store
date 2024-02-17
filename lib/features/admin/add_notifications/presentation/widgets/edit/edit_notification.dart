import 'package:asroo_store/core/common/bottom_shet/custom_bottom_sheet.dart';
import 'package:asroo_store/features/admin/add_notifications/presentation/widgets/edit/edit_notification_bottom_sheet.dart';
import 'package:flutter/material.dart';

class EditNotification extends StatelessWidget {
  const EditNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        CustomBottomSheet.showModalBottomSheetContainer(
          context: context,
          widget: const EditNotificationBottomSheet(),
        );
      },
      child: Icon(
        Icons.edit,
        color: Colors.yellow,
      ),
    );
  }
}
