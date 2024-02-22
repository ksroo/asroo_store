import 'package:equatable/equatable.dart';

abstract class ProductsViewAllEvent extends Equatable {
  const ProductsViewAllEvent();
  @override
  List<Object?> get props => [];
}

class GetProductsViewAllEvent extends ProductsViewAllEvent {
  const GetProductsViewAllEvent();
}

class LoadMoreProductsEvent extends ProductsViewAllEvent {
  const LoadMoreProductsEvent();
}
