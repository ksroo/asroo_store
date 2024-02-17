part of 'get_all_notification_admin_bloc.dart';

@freezed
class GetAllNotificationAdminEvent with _$GetAllNotificationAdminEvent {
  const factory GetAllNotificationAdminEvent.started() = _Started;
  const factory GetAllNotificationAdminEvent.getAllNotificion() =
      FetchAllNotificationAdminEvent;
}
