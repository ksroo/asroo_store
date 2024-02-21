import 'dart:async';
import 'package:asroo_store/features/admin/add_products/data/models/get_all_product_reponse.dart';
import 'package:asroo_store/features/customer/category/data/repos/category_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_category_event.dart';
part 'get_category_state.dart';
part 'get_category_bloc.freezed.dart';

class GetCategoryBloc extends Bloc<GetCategoryEvent, GetCategoryState> {
  GetCategoryBloc(this._repo) : super(const GetCategoryState.loading()) {
    on<FetchCategoreyEvent>(_getCategory);
  }

  final CatgeoryRepo _repo;

  FutureOr<void> _getCategory(
    FetchCategoreyEvent event,
    Emitter<GetCategoryState> emit,
  ) async {
    emit(const GetCategoryState.loading());

    final result = await _repo.getCategory(categoryId: event.categoryId);

    result.when(
      success: (data) {
        if (data.productGetAllList.isEmpty) {
          emit(const GetCategoryState.empty());
        } else {
          emit(
            GetCategoryState.success(
              productsList: data.productGetAllList,
            ),
          );
        }
      },
      failure: (error) {
        emit(GetCategoryState.error(error: error));
      },
    );
  }
}
