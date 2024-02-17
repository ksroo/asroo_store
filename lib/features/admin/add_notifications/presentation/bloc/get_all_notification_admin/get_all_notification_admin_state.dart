part of 'get_all_notification_admin_bloc.dart';

@freezed
class GetAllNotificationAdminState with _$GetAllNotificationAdminState {
  const factory GetAllNotificationAdminState.loading() = LoadingState;
  const factory GetAllNotificationAdminState.success({
    required List<AddNotificationModel> notificationList,
  }) = SuccessState;
  const factory GetAllNotificationAdminState.empty() = EmptyState;
  const factory GetAllNotificationAdminState.error({required String error}) =
      ErrorState;
}
