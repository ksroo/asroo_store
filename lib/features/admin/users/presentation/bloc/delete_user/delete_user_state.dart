part of 'delete_user_bloc.dart';

@freezed
class DeleteUserState with _$DeleteUserState {
  const factory DeleteUserState.initial() = _Initial;
  const factory DeleteUserState.loading({required String userId}) =
      LoadingState;
  const factory DeleteUserState.success() = SuccessState;
  const factory DeleteUserState.error({required String error}) = ErrorState;
}
