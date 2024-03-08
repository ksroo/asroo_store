part of 'delete_user_bloc.dart';

@freezed
class DeleteUserEvent with _$DeleteUserEvent {
  const factory DeleteUserEvent.started() = _Started;
  const factory DeleteUserEvent.deleteUser({required String userId}) =
      RemoveUserEvent;
}
