part of 'add_notification_bloc.dart';

@freezed
class AddNotificationState with _$AddNotificationState {
  const factory AddNotificationState.initial() = _Initial;
  const factory AddNotificationState.loading() = LoadingState;
  const factory AddNotificationState.success() = SuccessState;
  const factory AddNotificationState.error({required String error}) =
      ErrorState;
}
