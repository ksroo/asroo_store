import 'dart:async';
import 'package:asroo_store/features/admin/dashboard/data/repos/dashboard_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_number_event.dart';
part 'categories_number_state.dart';
part 'categories_number_bloc.freezed.dart';

class CategoriesNumberBloc
    extends Bloc<CategoriesNumberEvent, CategoriesNumberState> {
  CategoriesNumberBloc(this._repo)
      : super(const CategoriesNumberState.loading()) {
    on<GetCategoriesNumberEvent>(_getCategoriesNumber);
  }

  final DashBoardRepo _repo;

  FutureOr<void> _getCategoriesNumber(
    GetCategoriesNumberEvent event,
    Emitter<CategoriesNumberState> emit,
  ) async {
    emit(const CategoriesNumberState.loading());
    final result = await _repo.numberOfCategories();

    result.when(
      success: (categoryData) {
        emit(
          CategoriesNumberState.success(
            numbers: categoryData.categoriesNumbers,
          ),
        );
      },
      failure: (error) {
        emit(CategoriesNumberState.error(error: error));
      },
    );
  }
}
