import 'dart:async';
import 'package:asroo_store/features/customer/products_view_all/data/repos/products_view_all_repo.dart';
import 'package:asroo_store/features/customer/products_view_all/persentation/bloc/products_view_all/products_view_all_event.dart';
import 'package:asroo_store/features/customer/products_view_all/persentation/bloc/products_view_all/products_view_all_state.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsViewAllBloc
    extends Bloc<ProductsViewAllEvent, ProductsViewAllState> {
  ProductsViewAllBloc(this._repo)
      : super(
          const ProductsViewAllInitialState(
            productsList: [],
            hasMoreData: true,
          ),
        ) {
    on<GetProductsViewAllEvent>(_getProductsViewAll);
    on<LoadMoreProductsEvent>(_loadMoreProducts, transformer: droppable());
  }

  final ProductsViewAllRepo _repo;

  int offset = 6;

// Get All Proudtcs
  FutureOr<void> _getProductsViewAll(
    GetProductsViewAllEvent event,
    Emitter<ProductsViewAllState> emit,
  ) async {
    emit(
      const ProductsViewAllLoadingState(productsList: [], hasMoreData: true),
    );

    final result = await _repo.getProductsViewAll(offset: 0);

    result.when(
      success: (data) {
        emit(
          ProductsViewAllSuccessState(
            productsList: data.productGetAllList,
            hasMoreData: true,
          ),
        );
      },
      failure: (error) {
        emit(
          ProductsViewAllErrorState(
            errorMessage: error,
            productsList: state.productsList,
            hasMoreData: true,
          ),
        );
      },
    );
  }

  // LoadMoreProducts Data

  FutureOr<void> _loadMoreProducts(
    LoadMoreProductsEvent event,
    Emitter<ProductsViewAllState> emit,
  ) async {
    if (!state.hasMoreData) return;

    offset += 6;

    emit(
      ProductsViewAllLoadingState(
        productsList: state.productsList,
        hasMoreData: state.hasMoreData,
      ),
    );

    final result = await _repo.getProductsViewAll(offset: offset);

    result.when(
      success: (data) {
        final newList = [...state.productsList, ...data.productGetAllList];
        emit(
          ProductsViewAllSuccessState(
            productsList: newList,
            hasMoreData: !(data.productGetAllList.length < 6),
          ),
        );
      },
      failure: (error) {
        emit(
          ProductsViewAllErrorState(
            errorMessage: error,
            productsList: state.productsList,
            hasMoreData: state.hasMoreData,
          ),
        );
      },
    );
  }

  void handlerPagination({
    required ScrollController scrollController,
    required double loadMorePosition,
  }) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final offset = scrollController.offset;
      final maxExtent = scrollController.position.maxScrollExtent;

      if (offset >= maxExtent - loadMorePosition) {
        add(const LoadMoreProductsEvent());
      }
    });
  }
}
