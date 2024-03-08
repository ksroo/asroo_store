part of 'product_details_bloc.dart';

@freezed
class ProductDetailsState with _$ProductDetailsState {
  const factory ProductDetailsState.loading() = LoadingState;
  const factory ProductDetailsState.success({
    required ProductDetailsModel productDetailsModel,
  }) = SuccessState;
  const factory ProductDetailsState.error({required String error}) = ErrorState;
}
