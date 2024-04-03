import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:bloc_app/core/theming/assets_manager.dart';
import 'package:bloc_app/core/theming/styles_manager.dart';

class OnboardingLogoAndName extends StatelessWidget {
  const OnboardingLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          AssetsManager.docLogo,
        ),
        SizedBox(width: 10.w),
        Text(
          'Docdoc',
          style: TextStylesManager.font24BlackBold,
        ),
      ],
    );
  }
}
