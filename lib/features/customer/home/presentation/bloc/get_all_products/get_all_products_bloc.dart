import 'dart:async';
import 'package:asroo_store/features/admin/add_products/data/models/get_all_product_reponse.dart';
import 'package:asroo_store/features/customer/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_products_event.dart';
part 'get_all_products_state.dart';
part 'get_all_products_bloc.freezed.dart';

class GetAllProductsBloc
    extends Bloc<GetAllProductsEvent, GetAllProductsState> {
  GetAllProductsBloc(this._repo) : super(const GetAllProductsState.loading()) {
    on<FetchProductsEvent>(_getAllProducts);
  }

  final HomeRepo _repo;

  bool isProductListSmallerThan10 = false;

  FutureOr<void> _getAllProducts(
    FetchProductsEvent event,
    Emitter<GetAllProductsState> emit,
  ) async {
    emit(const GetAllProductsState.loading());

    final result = await _repo.getAllProducts();

    result.when(
      success: (data) {
        if (data.productGetAllList.isEmpty) {
          emit(const GetAllProductsState.empty());
        } else {
          isProductListSmallerThan10 = data.productGetAllList.length >= 10;
          emit(
            GetAllProductsState.success(productsList: data.productGetAllList),
          );
        }
      },
      failure: (error) {
        emit(GetAllProductsState.error(error: error));
      },
    );
  }
}
