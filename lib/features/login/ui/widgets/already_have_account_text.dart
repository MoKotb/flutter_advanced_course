import 'package:bloc_app/core/theming/styles_manager.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account?',
            style: TextStylesManager.font13DarkBlueRegular,
          ),
          TextSpan(
            text: ' Sign Up',
            style: TextStylesManager.font13BlueSemiBold,
          ),
        ],
      ),
    );
  }
}