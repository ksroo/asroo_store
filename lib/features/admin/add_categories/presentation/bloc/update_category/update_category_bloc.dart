import 'dart:async';
import 'package:asroo_store/features/admin/add_categories/data/models/update_category_request_body.dart';
import 'package:asroo_store/features/admin/add_categories/data/repos/categoreis_admin_repos.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_category_event.dart';
part 'update_category_state.dart';
part 'update_category_bloc.freezed.dart';

class UpdateCategoryBloc
    extends Bloc<UpdateCategoryEvent, UpdateCategoryState> {
  UpdateCategoryBloc(this._repo) : super(const _Initial()) {
    on<NewUpdateCategoryEvent>(_updateCategory);
  }

  final CategoreisAdminRepo _repo;

  FutureOr<void> _updateCategory(
    NewUpdateCategoryEvent event,
    Emitter<UpdateCategoryState> emit,
  ) async {
    emit(const UpdateCategoryState.loading());

    final result = await _repo.updateCategory(body: event.body);

    result.when(
      success: (_) {
        emit(const UpdateCategoryState.success());
      },
      failure: (error) {
        emit(UpdateCategoryState.error(error: error));
      },
    );
  }
}
