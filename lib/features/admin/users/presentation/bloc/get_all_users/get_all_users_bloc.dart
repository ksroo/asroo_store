import 'dart:async';
import 'package:asroo_store/features/admin/users/data/models/get_all_users_response.dart';
import 'package:asroo_store/features/admin/users/data/repos/users_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_users_event.dart';
part 'get_all_users_state.dart';
part 'get_all_users_bloc.freezed.dart';

class GetAllUsersBloc extends Bloc<GetAllUsersEvent, GetAllUsersState> {
  GetAllUsersBloc(this._repo) : super(const GetAllUsersState.loading()) {
    on<FetchAllUsersEvent>(_getAllUsers);
    on<SearchForUserEvent>(_searchForUser);
  }

  final UsersRepo _repo;

  final TextEditingController searchController = TextEditingController();

  List<UsersModel> usersList = [];
  // get all users
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
          usersList = users.data.usersList;
          emit(GetAllUsersState.success(userList: usersList));
        }
      },
      failure: (error) {
        emit(GetAllUsersState.error(error: error));
      },
    );
  }

  // search for user

  FutureOr<void> _searchForUser(
    SearchForUserEvent event,
    Emitter<GetAllUsersState> emit,
  ) async {
    final searchResult = usersList
        .where(
          (e) =>
              e.name!.toLowerCase().startsWith(
                    event.searchName!.toLowerCase().trim(),
                  ) ||
              e.email!
                  .toLowerCase()
                  .startsWith(event.searchName!.toLowerCase().trim()),
        )
        .toList();

    if (searchResult.isEmpty) {
      emit(const GetAllUsersState.empty());
    } else {
      emit(GetAllUsersState.success(userList: searchResult));
    }
  }
}
