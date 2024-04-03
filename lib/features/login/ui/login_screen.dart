import 'package:bloc_app/core/widgets/app_text_button.dart';
import 'package:bloc_app/features/login/logic/cubit/login_cubit.dart';
import 'package:bloc_app/features/login/ui/widgets/already_have_account_text.dart';
import 'package:bloc_app/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:bloc_app/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:bloc_app/core/helpers/spacing.dart';
import 'package:bloc_app/core/theming/styles_manager.dart';
import 'package:bloc_app/features/login/ui/widgets/email_and_password.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.w,
              vertical: 30.h,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome Back",
                    style: TextStylesManager.font24BlueBold,
                  ),
                  verticalSpace(8),
                  Text(
                    "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                    style: TextStylesManager.font14GrayRegular,
                  ),
                  verticalSpace(36),
                  const EmailAndPassword(),
                  verticalSpace(24),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text(
                      'Forgot Password?',
                      style: TextStylesManager.font13BlueRegular,
                    ),
                  ),
                  verticalSpace(40),
                  AppTextButton(
                    buttonText: 'LOGIN',
                    buttonStyle: TextStylesManager.font16WhiteMedium,
                    onPressed: () {
                      validateThenLogin(context);
                    },
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      verticalSpace(16),
                      const TermsAndConditionsText(),
                      verticalSpace(60),
                      const AlreadyHaveAccountText(),
                      const LoginBlocListener(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void validateThenLogin(BuildContext context) {
    final loginCubit = context.read<LoginCubit>();
    if (loginCubit.formKey.currentState!.validate()) {
      loginCubit.emitLoginState();
    }
  }
}
