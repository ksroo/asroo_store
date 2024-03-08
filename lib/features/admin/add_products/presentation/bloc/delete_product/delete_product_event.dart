part of 'delete_product_bloc.dart';

@freezed
class DeleteProductEvent with _$DeleteProductEvent {
  const factory DeleteProductEvent.started() = _Started;
  const factory DeleteProductEvent.deleteProduct({required String productId}) =
      RemoveProductEvent;
}
