part of 'categories_number_bloc.dart';

@freezed
class CategoriesNumberState with _$CategoriesNumberState {
  const factory CategoriesNumberState.loading() = LoadinState;
  const factory CategoriesNumberState.success({required String numbers}) =
      SuccessState;
  const factory CategoriesNumberState.error({required String error}) = ErrorState;
}
