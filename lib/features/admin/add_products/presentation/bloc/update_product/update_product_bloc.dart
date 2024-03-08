import 'dart:async';
import 'package:asroo_store/features/admin/add_products/data/models/update_product_request_body.dart';
import 'package:asroo_store/features/admin/add_products/data/repos/products_admin_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_product_event.dart';
part 'update_product_state.dart';
part 'update_product_bloc.freezed.dart';

class UpdateProductBloc extends Bloc<UpdateProductEvent, UpdateProductState> {
  UpdateProductBloc(this._repo) : super(const _Initial()) {
    on<NewUpdateProductEvent>(_updateProduct);
  }

  final ProductsAdminRepo _repo;

  FutureOr<void> _updateProduct(
    NewUpdateProductEvent event,
    Emitter<UpdateProductState> emit,
  ) async {
    emit(const UpdateProductState.loading());

    final result = await _repo.updateProductsAdmin(body: event.body);

    result.when(
      success: (_) {
        emit(const UpdateProductState.success());
      },
      failure: (error) {
        emit(UpdateProductState.error(error: error));
      },
    );
  }
}
