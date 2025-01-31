import "package:flutter/material.dart";
import "package:moniepoint_test/config/theme/app_colors.dart";
import "package:moniepoint_test/config/theme/dimensions.dart";
import "package:moniepoint_test/config/theme/input_decoration.dart";
import "package:moniepoint_test/config/theme/text_theme.dart";
import "package:moniepoint_test/gen/fonts.gen.dart";


class CustomTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      useMaterial3: true,
      primaryColor: AppColors.pBl100,
      scaffoldBackgroundColor: AppColors.pW101,

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.pW103, // 4

        selectedIconTheme: const IconThemeData(size: 24),

        selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w500,
            color: AppColors.pBl100,
            fontSize: AppDimens.fontSize13),
        unselectedIconTheme:
            const IconThemeData(color: AppColors.pG102),
        unselectedItemColor: AppColors.pG102,
      ),

      colorScheme: ThemeData().colorScheme.copyWith(
            primary: AppColors.pBl100,
            secondary: AppColors.pW100,
          ),
      appBarTheme: AppBarTheme(
        toolbarHeight: 100.0,
          elevation: 0.0,
          scrolledUnderElevation: 0.0,
          backgroundColor: AppColors.pW101,
          iconTheme: IconThemeData(
              color: AppColors.pBl100, size: AppDimens.iconSize),
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: AppDimens.fontSize14,
              color: AppColors.pBl100)),
      fontFamily: FontFamily.geist,

      // Button Theme
      buttonTheme: const ButtonThemeData(
        buttonColor: AppColors.pBl100,
        textTheme: ButtonTextTheme.primary,
      ),

      inputDecorationTheme: kInputDecorationTheme(),
      textTheme: appTextTheme,

      dividerColor: AppColors.pG101,
      hintColor: AppColors.pG101,

      iconTheme: IconThemeData(size: AppDimens.iconSize),
    );
  }
}
