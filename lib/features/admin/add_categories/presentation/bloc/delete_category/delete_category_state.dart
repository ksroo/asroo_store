part of 'delete_category_bloc.dart';

@freezed
class DeleteCategoryState with _$DeleteCategoryState {
  const factory DeleteCategoryState.initial() = _Initial;
  const factory DeleteCategoryState.loading({required String categoryId}) =
      LoadingState;
  const factory DeleteCategoryState.success() = SuccessState;
  const factory DeleteCategoryState.error({required String error}) = ErrorState;
}
