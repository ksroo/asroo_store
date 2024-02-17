part of 'send_notification_bloc.dart';

@freezed
class SendNotificationState with _$SendNotificationState {
  const factory SendNotificationState.initial() = _Initial;
  const factory SendNotificationState.loading({required int indexId}) =
      LoadingState;
  const factory SendNotificationState.success() = SuccessState;
  const factory SendNotificationState.error({required String error}) =
      ErrorState;
}
