import 'dart:async';
import 'package:asroo_store/features/admin/users/data/models/get_all_users_response.dart';
import 'package:asroo_store/features/admin/users/data/repos/users_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_users_event.dart';
part 'get_all_users_state.dart';
part 'get_all_users_bloc.freezed.dart';

class GetAllUsersBloc extends Bloc<GetAllUsersEvent, GetAllUsersState> {
  GetAllUsersBloc(this._repo) : super(const GetAllUsersState.loading()) {
    on<FetchAllUsersEvent>(_getAllUsers);
  }

  final UsersRepo _repo;

  FutureOr<void> _getAllUsers(
    FetchAllUsersEvent event,
    Emitter<GetAllUsersState> emit,
  ) async {
    if (event.isNotLoading) {
      emit(const GetAllUsersState.loading());
    }

    final result = await _repo.getAllUsers();

    result.when(
      success: (users) {
        if (users.data.usersList.isEmpty) {
          emit(const GetAllUsersState.empty());
        } else {
          emit(GetAllUsersState.success(userList: users.data.usersList));
        }
      },
      failure: (error) {
        emit(GetAllUsersState.error(error: error));
      },
    );
  }
}
