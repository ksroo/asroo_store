import 'package:asroo_store/core/common/widgets/custom_text_field.dart';
import 'package:asroo_store/core/style/colors/colors_dark.dart';
import 'package:asroo_store/features/admin/users/presentation/bloc/get_all_users/get_all_users_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchForUsers extends StatefulWidget {
  const SearchForUsers({super.key});

  @override
  State<SearchForUsers> createState() => _SearchForUsersState();
}

class _SearchForUsersState extends State<SearchForUsers> {
  @override
  void dispose() {
    context.read<GetAllUsersBloc>().searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAllUsersBloc, GetAllUsersState>(
      builder: (context, state) {
        final bloc = context.read<GetAllUsersBloc>();
        return CustomTextField(
          controller: bloc.searchController,
          keyboardType: TextInputType.emailAddress,
          hintText: 'Search for users',
          onChanged: (value) {
            bloc.add(GetAllUsersEvent.searchForUser(value));
            return null;
          },
          suffixIcon: IconButton(
            onPressed: () {
              bloc.searchController.clear();
              bloc.add(const GetAllUsersEvent.getAllUsers(isNotLoading: true));
            },
            icon: bloc.searchController.text.isEmpty
                ? const SizedBox.shrink()
                : const Icon(
                    Icons.clear,
                    color: ColorsDark.blueLight,
                  ),
          ),
        );
      },
    );
  }
}
