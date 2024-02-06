part of 'products_number_bloc.dart';

@freezed
class ProductsNumberEvent with _$ProductsNumberEvent {
  const factory ProductsNumberEvent.started() = _Started;
  const factory ProductsNumberEvent.getProductsNumber() =
      GetProductsNumberEvent;
}
