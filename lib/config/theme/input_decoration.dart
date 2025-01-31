import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:moniepoint_test/config/theme/app_colors.dart";
import "package:moniepoint_test/config/theme/dimensions.dart";

InputDecorationTheme kInputDecorationTheme() {
  const borderRadius = 12.0;
  return InputDecorationTheme(
    border:
        OutlineInputBorder(borderRadius: BorderRadius.circular(borderRadius)),
    filled: true,
    fillColor: AppColors.pW100,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius),
      borderSide: BorderSide.none,
    ),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide.none),
    focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide.none),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide.none),
    hintStyle: TextStyle(
      fontSize: 14.sp,
      color: AppColors.pG101,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
    ),
    labelStyle: TextStyle(
      fontSize: AppDimens.fontSize16,
      color: AppColors.pBl100,
    ),
    errorStyle: TextStyle(
      fontSize: AppDimens.fontSize13,
      color: AppColors.pR100,
    ),
  );
}
