part of 'delete_product_bloc.dart';

@freezed
class DeleteProductState with _$DeleteProductState {
  const factory DeleteProductState.initial() = _Initial;
  const factory DeleteProductState.loading({required String productId}) =
      LoadingState;
  const factory DeleteProductState.success() = SuccessState;
  const factory DeleteProductState.error({required String error}) = ErrorState;
}
