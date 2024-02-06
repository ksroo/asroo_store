part of 'products_number_bloc.dart';

@freezed
class ProductsNumberState with _$ProductsNumberState {
  const factory ProductsNumberState.loading() = LoadinState;
  const factory ProductsNumberState.success({required String numbers}) =
      SuccessState;
  const factory ProductsNumberState.error({required String error}) = ErrorState;
}
