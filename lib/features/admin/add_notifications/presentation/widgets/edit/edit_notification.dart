import 'package:asroo_store/core/common/bottom_shet/custom_bottom_sheet.dart';
import 'package:asroo_store/features/admin/add_notifications/data/models/add_notification_model.dart';
import 'package:asroo_store/features/admin/add_notifications/presentation/bloc/get_all_notification_admin/get_all_notification_admin_bloc.dart';
import 'package:asroo_store/features/admin/add_notifications/presentation/widgets/edit/edit_notification_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditNotification extends StatelessWidget {
  const EditNotification({required this.notificationModel, super.key});

  final AddNotificationModel notificationModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        CustomBottomSheet.showModalBottomSheetContainer(
          context: context,
          widget: EditNotificationBottomSheet(
            notificationModel: notificationModel,
          ),
          whenComplete: () {
            context.read<GetAllNotificationAdminBloc>().add(
                  const GetAllNotificationAdminEvent.getAllNotificion(),
                );
          },
        );
      },
      child: const Icon(
        Icons.edit,
        color: Colors.yellow,
      ),
    );
  }
}
