import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_test/config/theme/app_colors.dart';
import 'package:moniepoint_test/config/theme/dimensions.dart';
import 'package:moniepoint_test/ui/widgets/botton_nav_btn.dart';

Widget bottomNavigationbar(
    {required int currentIndex, required Function(int) onPress}) {
  return Padding(
    padding: EdgeInsets.fromLTRB(AppSizes.blockSizeHorizontal * 8.5, 0,
        AppSizes.blockSizeHorizontal * 8.5, 20.h),
    child: Material(
      color: Colors.transparent,
      elevation: 10,
      child: Container(
        width: AppSizes.screenWidth,
        height: AppSizes.blockSizeHorizontal * 15,
        decoration: BoxDecoration(
            color: AppColors.darkShade2B,
            borderRadius: BorderRadius.circular(30.r)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavBtn(
              icon: Icons.search,
              currentIndex: currentIndex,
              index: 0,
              onPress: (val) => onPress(0),
            ),
            BottomNavBtn(
              icon: Icons.chat,
              index: 1,
              currentIndex: currentIndex,
              onPress: (val) => onPress(1),
            ),
            BottomNavBtn(
              icon: Icons.home_filled,
              index: 2,
              currentIndex: currentIndex,
              onPress: (val) => onPress(2),
            ),
            BottomNavBtn(
              icon: Icons.favorite,
              index: 3,
              currentIndex: currentIndex,
              onPress: (val) => onPress(3),
            ),
            BottomNavBtn(
              icon: Icons.person_2_rounded,
              index: 4,
              currentIndex: currentIndex,
              onPress: (val) => onPress(4),
            ),
          ],
        ),
      ),
    ),
  );
}
