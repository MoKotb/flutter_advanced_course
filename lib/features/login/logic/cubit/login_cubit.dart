import 'package:bloc_app/features/login/data/models/login_request_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_app/features/login/data/repos/login_repo.dart';
import 'package:bloc_app/features/login/logic/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  Future<void> emitLoginState() async {
    emit(const LoginState.loading());
    final loginRequestBody = LoginRequestBody(
      email: emailController.text,
      password: passwordController.text,
    );
    final response = await _loginRepo.login(loginRequestBody);
    response.when(
      success: (data) {
        emit(LoginState.success(data));
      },
      failure: (error) {
        emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
