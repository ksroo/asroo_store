part of 'get_all_admin_product_bloc.dart';

@freezed
class GetAllAdminProductState with _$GetAllAdminProductState {
  const factory GetAllAdminProductState.loading() = LoadingState;
  const factory GetAllAdminProductState.success({
    required List<ProductGetAllModel> productList,
  }) = SuccessState;
  const factory GetAllAdminProductState.empty() = EmptyState;
  const factory GetAllAdminProductState.error({required String error}) =
      ErrorState;
}
