part of 'create_prodcut_bloc.dart';

@freezed
class CreateProdcutEvent with _$CreateProdcutEvent {
  const factory CreateProdcutEvent.started() = _Started;
  const factory CreateProdcutEvent.creatProduct(
      {required CreateProductRequestBody body}) = NewCreateProductEvent;
}
