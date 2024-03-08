import 'dart:async';
import 'package:asroo_store/features/admin/add_products/data/models/get_all_product_reponse.dart';
import 'package:asroo_store/features/admin/add_products/data/repos/products_admin_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_admin_product_event.dart';
part 'get_all_admin_product_state.dart';
part 'get_all_admin_product_bloc.freezed.dart';

class GetAllAdminProductBloc
    extends Bloc<GetAllAdminProductEvent, GetAllAdminProductState> {
  GetAllAdminProductBloc(this._repo)
      : super(const GetAllAdminProductState.loading()) {
    on<FetchAllAdminProductEvent>(_getAllProducts);
  }

  final ProductsAdminRepo _repo;

  FutureOr<void> _getAllProducts(
    FetchAllAdminProductEvent event,
    Emitter<GetAllAdminProductState> emit,
  ) async {
    if (event.isNotLoading) {
      emit(const GetAllAdminProductState.loading());
    }

    final result = await _repo.getAllProductsAdmin();

    result.when(
      success: (data) {
        if (data.productGetAllList.isEmpty) {
          emit(const GetAllAdminProductState.empty());
        } else {
          emit(
            GetAllAdminProductState.success(
              productList: data.productGetAllList,
            ),
          );
        }
      },
      failure: (error) {
        emit(GetAllAdminProductState.error(error: error));
      },
    );
  }
}
