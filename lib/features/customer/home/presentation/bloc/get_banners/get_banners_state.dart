part of 'get_banners_bloc.dart';

@freezed
class GetBannersState with _$GetBannersState {
  const factory GetBannersState.loading() = LoadingState;
  const factory GetBannersState.success({
    required List<String> imageBannerList,
  }) = SuccessState;
  const factory GetBannersState.empty() = EmptyState;
  const factory GetBannersState.error({required String error}) = ErrorState;
}
