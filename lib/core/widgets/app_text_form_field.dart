import 'package:bloc_app/core/theming/colors_manager.dart';
import 'package:bloc_app/core/theming/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder,
      enabledBorder,
      errorBorder,
      focusedErrorBorder;
  final TextStyle? hintStyle, inputTextStyle;
  final String hintText;
  final Widget? suffixIcon;
  final bool? isObscureText;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?)? validator;
  const AppTextFormField({
    super.key,
    required this.hintText,
    this.controller,
    this.contentPadding,
    this.isObscureText,
    this.focusedBorder,
    this.enabledBorder,
    this.errorBorder,
    this.focusedErrorBorder,
    this.hintStyle,
    this.suffixIcon,
    this.inputTextStyle,
    this.backgroundColor,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 18.h,
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsManager.mainBlue,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsManager.lighterGray,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
        errorBorder: errorBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.red,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
        focusedErrorBorder: focusedErrorBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.red,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
        hintText: hintText,
        hintStyle: hintStyle ?? TextStylesManager.font14LightGrayRegular,
        suffixIcon: suffixIcon,
        fillColor: backgroundColor ?? ColorsManager.moreLightGray,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: inputTextStyle ?? TextStylesManager.font14DarkBlueMedium,
      validator: validator != null ?  (value) {
        return  validator!(value);
      } :null,
    );
  }
}
