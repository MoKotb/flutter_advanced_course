import 'package:bloc_app/core/theming/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_svg/svg.dart';

import 'package:bloc_app/core/theming/assets_manager.dart';

class OnboardingBackgroundImage extends StatelessWidget {
  const OnboardingBackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(AssetsManager.docLogoWithLowOpacity),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              stops: const [0.14, 0.4],
            ),
          ),
          child: Image.asset(AssetsManager.onboardingBackgroundImage),
        ),
        Positioned(
          right: 0,
          left: 0,
          bottom: 30.h,
          child: Text(
            'Best Doctor\nAppointment App',
            textAlign: TextAlign.center,
            style: TextStylesManager.font32BlueBold.copyWith(
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }
}
