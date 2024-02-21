part of 'get_category_bloc.dart';

@freezed
class GetCategoryState with _$GetCategoryState {
  const factory GetCategoryState.loading() = LoadingState;
  const factory GetCategoryState.success({
    required List<ProductGetAllModel> productsList,
  }) = SuccessState;
  const factory GetCategoryState.empty() = EmptyState;
  const factory GetCategoryState.error({required String error}) = ErrorState;
}
