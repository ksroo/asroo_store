import 'dart:async';
import 'package:asroo_store/features/admin/dashboard/data/repos/dashboard_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_number_event.dart';
part 'products_number_state.dart';
part 'products_number_bloc.freezed.dart';

class ProductsNumberBloc
    extends Bloc<ProductsNumberEvent, ProductsNumberState> {
  ProductsNumberBloc(this._repo) : super(const ProductsNumberState.loading()) {
    on<GetProductsNumberEvent>(_getProductsNumber);
  }

  final DashBoardRepo _repo;

//Products
  FutureOr<void> _getProductsNumber(
    GetProductsNumberEvent event,
    Emitter<ProductsNumberState> emit,
  ) async {
    emit(const ProductsNumberState.loading());
    final result = await _repo.numberOfProducts();

    result.when(
      success: (productsData) {
        emit(
          ProductsNumberState.success(
            numbers: productsData.produtcsNumbers,
          ),
        );
      },
      failure: (error) {
        emit(ProductsNumberState.error(error: error));
      },
    );
  }
}
