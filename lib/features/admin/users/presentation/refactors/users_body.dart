import 'package:asroo_store/core/common/loading/empty_screen.dart';
import 'package:asroo_store/features/admin/users/presentation/bloc/get_all_users/get_all_users_bloc.dart';
import 'package:asroo_store/features/admin/users/presentation/widgets/search_for_users.dart';
import 'package:asroo_store/features/admin/users/presentation/widgets/table_for_users.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UsersBody extends StatelessWidget {
  const UsersBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      child: Column(
        children: [
          // Search For Users
          const SearchForUsers(),
          SizedBox(height: 20.h),
          //Table
          Flexible(
            child: RefreshIndicator(
              onRefresh: () async {
                context.read<GetAllUsersBloc>().add(
                      const GetAllUsersEvent.getAllUsers(isNotLoading: true),
                    );
              },
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: BlocBuilder<GetAllUsersBloc, GetAllUsersState>(
                      builder: (context, state) {
                        return state.when(
                          loading: () {
                            return const Center(
                              child: CircularProgressIndicator(
                                color: Colors.white,
                              ),
                            );
                          },
                          search: (searchUserList) {
                            return TableForUsers(
                              userList: searchUserList,
                            );
                          },
                          success: (userList) {
                            return TableForUsers(
                              userList: userList,
                            );
                          },
                          empty: EmptyScreen.new,
                          error: Text.new,
                        );
                      },
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(height: 25.h),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
