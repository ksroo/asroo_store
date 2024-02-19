import 'package:asroo_store/core/di/injection_container.dart';
import 'package:asroo_store/features/customer/profile/presentation/bloc/bloc/profile_bloc.dart';
import 'package:asroo_store/features/customer/profile/presentation/refactors/profile_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ProfileBloc>()
        ..add(
          const ProfileEvent.getUserInfo(),
        ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: const ProfileBody(),
      ),
    );
  }
}
