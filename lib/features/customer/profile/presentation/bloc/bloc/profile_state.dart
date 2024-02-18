part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.loading() = LoadingState;
  const factory ProfileState.success(
      {required UserRoleResponse userInfoModel}) = SuccessState;
  const factory ProfileState.error({required String error}) = ErrorState;
}
