part of 'get_all_products_bloc.dart';

@freezed
class GetAllProductsEvent with _$GetAllProductsEvent {
  const factory GetAllProductsEvent.started() = _Started;
    const factory GetAllProductsEvent.getProducts() = FetchProductsEvent;
}