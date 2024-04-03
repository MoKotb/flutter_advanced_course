import 'package:bloc_app/core/helpers/extensions.dart';
import 'package:bloc_app/core/helpers/spacing.dart';
import 'package:bloc_app/core/routing/routes.dart';
import 'package:bloc_app/core/theming/styles_manager.dart';
import 'package:bloc_app/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:bloc_app/features/onboarding/widgets/onboarding_logo_and_name.dart';
import 'package:bloc_app/features/onboarding/widgets/onboarding_background_image.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h),
            child: Column(
              children: [
                const OnboardingLogoAndName(),
                verticalSpace(30),
                const OnboardingBackgroundImage(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    children: [
                      Text(
                        'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                        style: TextStylesManager.font13GrayRegular,
                        textAlign: TextAlign.center,
                      ),
                      verticalSpace(30),
                      AppTextButton(
                        buttonText: 'Get Started',
                        buttonStyle: TextStylesManager.font16WhiteMedium,
                        onPressed: () {
                          context.pushNamed(Routes.loginScreen);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
