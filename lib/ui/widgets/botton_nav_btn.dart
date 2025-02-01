import 'package:flutter/material.dart';
import 'package:moniepoint_test/config/theme/app_colors.dart';
import 'package:moniepoint_test/config/theme/dimensions.dart';


class BottomNavBtn extends StatelessWidget {
  const BottomNavBtn(
      {super.key,
      required this.icon,
      required this.currentIndex,
      required this.index,
      required this.onPress});

  final IconData icon;
  final int index;
  final int currentIndex;
  final Function(int) onPress;

  @override
  Widget build(BuildContext context) {
    AppSizes().initSizes(context: context);
    return InkWell(
        onTap: () {
          onPress(index);
        },
        child: Container(
            width: AppSizes.blockSizeHorizontal * 16,
            height: AppSizes.blockSizeHorizontal * 12,
            decoration: const BoxDecoration(color: Colors.transparent),
            child: Container(
              decoration: BoxDecoration(
                color: currentIndex == index
                    ? AppColors.primary
                    : AppColors.darkShade20,
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                color: AppColors.pW100,
                size: AppSizes.blockSizeHorizontal * 6,
              ),
            )));
  }
}
