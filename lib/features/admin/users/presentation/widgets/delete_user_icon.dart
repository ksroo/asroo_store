import 'package:asroo_store/core/common/toast/show_toast.dart';
import 'package:asroo_store/features/admin/users/presentation/bloc/delete_user/delete_user_bloc.dart';
import 'package:asroo_store/features/admin/users/presentation/bloc/get_all_users/get_all_users_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeleteUserIcon extends StatelessWidget {
  const DeleteUserIcon({
    required this.userId,
    super.key,
  });

  final String userId;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DeleteUserBloc, DeleteUserState>(
      listener: (context, state) {
        state.whenOrNull(
          success: () {
            context
                .read<GetAllUsersBloc>()
                .add(const GetAllUsersEvent.getAllUsers(isNotLoading: false));
            ShowToast.showToastSuccessTop(
              message: 'User has been deleted',
            );
          },
          error: (error) {
            ShowToast.showToastErrorTop(
              message: error,
            );
          },
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          loading: (id) {
            if (id == userId) {
              return SizedBox(
                height: 30.h,
                width: 30.w,
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            } else {
              return const Padding(
                padding: EdgeInsets.all(8),
                child: Icon(
                  Icons.delete,
                  color: Colors.red,
                  size: 25,
                ),
              );
            }
          },
          orElse: () {
            return GestureDetector(
              onTap: () {
                context
                    .read<DeleteUserBloc>()
                    .add(DeleteUserEvent.deleteUser(userId: userId));
              },
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Icon(
                  Icons.delete,
                  color: Colors.red,
                  size: 25,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
