part of 'upload_image_cubit.dart';

@freezed
class UploadImageState with _$UploadImageState {
  const factory UploadImageState.initial() = _Initial;
  const factory UploadImageState.loading() = LoadingState;
  const factory UploadImageState.loadingList(int index) = LoadingListState;

  const factory UploadImageState.success() = SuccessState;
  const factory UploadImageState.removeImage({required String imageUrl}) =
      RemovemageState;

  const factory UploadImageState.error({required String error}) = ErrorState;
}
