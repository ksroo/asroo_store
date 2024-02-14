import 'dart:async';
import 'package:asroo_store/features/admin/users/data/repos/users_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_user_event.dart';
part 'delete_user_state.dart';
part 'delete_user_bloc.freezed.dart';

class DeleteUserBloc extends Bloc<DeleteUserEvent, DeleteUserState> {
  DeleteUserBloc(this._repo) : super(const _Initial()) {
    on<RemoveUserEvent>(_deleteUser);
  }

  final UsersRepo _repo;

  FutureOr<void> _deleteUser(
    RemoveUserEvent event,
    Emitter<DeleteUserState> emit,
  ) async {
    emit(DeleteUserState.loading(userId: event.userId));

    final result = await _repo.deleteUser(userId: event.userId);

    result.when(
      success: (_) {
        emit(const DeleteUserState.success());
      },
      failure: (error) {
        emit(DeleteUserState.error(error: error));
      },
    );
  }
}
