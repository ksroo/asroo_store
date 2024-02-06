import 'dart:async';
import 'package:asroo_store/features/admin/dashboard/data/repos/dashboard_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_number_event.dart';
part 'users_number_state.dart';
part 'users_number_bloc.freezed.dart';

class UsersNumberBloc extends Bloc<UsersNumberEvent, UsersNumberState> {
  UsersNumberBloc(this._repo) : super(const UsersNumberState.loading()) {
    on<GetUsersNumberEvent>(_getUsersNumber);
  }

  final DashBoardRepo _repo;

  FutureOr<void> _getUsersNumber(
    GetUsersNumberEvent event,
    Emitter<UsersNumberState> emit,
  ) async {
    final result = await _repo.numberOfProducts();

    result.when(
      success: (productsData) {
        emit(
          UsersNumberState.success(
            numbers: productsData.produtcsNumbers,
          ),
        );
      },
      failure: (error) {
        emit(UsersNumberState.error(error: error));
      },
    );
  }
}
