import 'dart:async';
import 'package:asroo_store/features/admin/add_products/data/models/create_product_request_body.dart';
import 'package:asroo_store/features/admin/add_products/data/repos/products_admin_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_prodcut_event.dart';
part 'create_prodcut_state.dart';
part 'create_prodcut_bloc.freezed.dart';

class CreateProdcutBloc extends Bloc<CreateProdcutEvent, CreateProdcutState> {
  CreateProdcutBloc(this._repo) : super(const _Initial()) {
    on<NewCreateProductEvent>(_createproduct);
  }

  final ProductsAdminRepo _repo;

  FutureOr<void> _createproduct(
    NewCreateProductEvent event,
    Emitter<CreateProdcutState> emit,
  ) async {
    emit(const CreateProdcutState.loading());

    final result = await _repo.createProductsAdmin(body: event.body);

    result.when(
      success: (_) {
        emit(const CreateProdcutState.success());
      },
      failure: (error) {
        emit(CreateProdcutState.error(error: error));
      },
    );
  }
}
