part of 'delete_category_bloc.dart';

@freezed
class DeleteCategoryState with _$DeleteCategoryState {
  const factory DeleteCategoryState.initial() = _Initial;
  const factory DeleteCategoryState.loading() = LoadingState;
  const factory DeleteCategoryState.success() = SuccessState;
  const factory DeleteCategoryState.error({required String error}) = ErrorState;
}
