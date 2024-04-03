import 'package:flutter/material.dart';

import 'package:bloc_app/core/theming/colors_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final void Function()? onPressed;
  final Color? backgroundColor;
  final double? horizontalPadding,
      verticalPadding,
      borderRadius,
      buttonWidth,
      buttonHeight;
  final String buttonText;
  final TextStyle buttonStyle;

  const AppTextButton({
    super.key,
    required this.buttonText,
    required this.buttonStyle,
    this.onPressed,
    this.backgroundColor,
    this.borderRadius,
    this.buttonWidth,
    this.buttonHeight,
    this.horizontalPadding,
    this.verticalPadding,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius?.r ?? 16.r),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(
          backgroundColor ?? ColorsManager.mainBlue,
        ),
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(
            horizontal: horizontalPadding?.w ?? 12.w,
            vertical: verticalPadding?.h ?? 14.h,
          ),
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        fixedSize: MaterialStateProperty.all(
          Size(
            buttonWidth?.w ?? double.maxFinite,
            buttonHeight?.h ?? 50.h,
          ),
        ),
      ),
      child: Text(
        buttonText,
        style: buttonStyle,
      ),
    );
  }
}
