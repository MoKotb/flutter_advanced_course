import 'package:bloc_app/core/theming/styles_manager.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: TextStylesManager.font13GrayRegular,
          ),
          TextSpan(
            text: ' Terms & Conditions',
            style: TextStylesManager.font13DarkBlueMedium,
          ),
          TextSpan(
            text: ' and',
            style: TextStylesManager.font13GrayRegular.copyWith(height: 1.5),
          ),
          TextSpan(
            text: ' Privacy Policy',
            style: TextStylesManager.font13DarkBlueMedium,
          ),
        ],
      ),
    );
  }
}