part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = Initial;
  const factory SearchState.loading() = LoadinState;
  const factory SearchState.success({
    required List<ProductGetAllModel> productsList,
  }) = SuccessState;
  const factory SearchState.empty() = EmptyState;
  const factory SearchState.error({required String error}) = ErrorState;
}
