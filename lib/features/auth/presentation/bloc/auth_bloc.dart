import 'dart:async';
import 'package:asroo_store/core/service/shared_pref/pref_keys.dart';
import 'package:asroo_store/core/service/shared_pref/shared_pref.dart';
import 'package:asroo_store/features/auth/data/models/login_request_body.dart';
import 'package:asroo_store/features/auth/data/models/sign_up_request_body.dart';
import 'package:asroo_store/features/auth/data/repos/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._repo) : super(const _Initial()) {
    on<LoginEvent>(_login);
    on<SignUpEvent>(_signUp);
  }

  final AuthRepos _repo;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  final formKey = GlobalKey<FormState>();

//Login
  FutureOr<void> _login(LoginEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());

    final result = await _repo.login(
      LoginRequestBody(
        email: emailController.text.trim(),
        password: passwordController.text,
      ),
    );

    await result.when(
      success: (loginData) async {
        // user token
        final token = loginData.data.login.accessToken ?? '';
        // save token in shared preferences
        await SharedPref().setString(PrefKeys.accessToken, token);
        // get user role
        final user = await _repo.userRole(token);
        await SharedPref().setInt(PrefKeys.userId, user.userId ?? 0);
        await SharedPref().setString(PrefKeys.userRole, user.userRole ?? '');
        emit(AuthState.success(userRole: user.userRole ?? ''));
      },
      failure: (error) {
        emit(AuthState.error(error: error));
      },
    );
  }

  // signup and login to take user token
  FutureOr<void> _signUp(
    SignUpEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    final result = await _repo.signUp(
      SignUpRequestBody(
        email: emailController.text.trim(),
        password: passwordController.text,
        avatar: event.imagUrl,
        name: nameController.text.trim(),
      ),
    );

    result.when(
      success: (signupData) {
        add(const AuthEvent.login());
      },
      failure: (error) {
        emit(AuthState.error(error: error));
      },
    );
  }
}
