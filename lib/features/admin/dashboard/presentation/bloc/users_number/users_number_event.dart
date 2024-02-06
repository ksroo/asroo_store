part of 'users_number_bloc.dart';

@freezed
class UsersNumberEvent with _$UsersNumberEvent {
  const factory UsersNumberEvent.started() = _Started;
  const factory UsersNumberEvent.getUsersNumber() = GetUsersNumberEvent;
}
