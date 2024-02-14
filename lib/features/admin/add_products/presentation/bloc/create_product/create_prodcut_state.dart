part of 'create_prodcut_bloc.dart';

@freezed
class CreateProdcutState with _$CreateProdcutState {
  const factory CreateProdcutState.initial() = _Initial;
  const factory CreateProdcutState.loading() = LoadingState;
  const factory CreateProdcutState.success() = SuccessState;
  const factory CreateProdcutState.error({required String error}) = ErrorState;
}
