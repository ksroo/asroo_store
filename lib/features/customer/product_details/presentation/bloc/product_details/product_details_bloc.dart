import 'dart:async';
import 'package:asroo_store/features/customer/product_details/data/models/product_details_reponse.dart';
import 'package:asroo_store/features/customer/product_details/data/repos/product_details_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_details_event.dart';
part 'product_details_state.dart';
part 'product_details_bloc.freezed.dart';

class ProductDetailsBloc
    extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  ProductDetailsBloc(this._repo) : super(const ProductDetailsState.loading()) {
    on<GetProductDetailsEvent>(_pdouctDetails);
  }

  final ProductDetailsRepo _repo;

  FutureOr<void> _pdouctDetails(
    GetProductDetailsEvent event,
    Emitter<ProductDetailsState> emit,
  ) async {
    emit(const ProductDetailsState.loading());

    final result = await _repo.productDetails(id: event.productId);

    result.when(
      success: (data) {
        emit(
          ProductDetailsState.success(
            productDetailsModel: data.data.productModel,
          ),
        );
      },
      failure: (error) {
        emit(ProductDetailsState.error(error: error));
      },
    );
  }
}
