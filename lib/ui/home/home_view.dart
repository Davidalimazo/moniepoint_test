import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_test/config/theme/app_colors.dart';
import 'package:moniepoint_test/config/theme/dimensions.dart';
import 'package:moniepoint_test/gen/assets.gen.dart';
import 'package:moniepoint_test/main.dart';
import 'package:moniepoint_test/ui/home/home_provider.dart';
import 'package:moniepoint_test/ui/widgets/text_input.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moniepoint_test/ui/widgets/widget_utils.dart';

class HomeView extends ConsumerWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AppSizes().initSizes(context: context);
    final currentIndex = ref.watch(homeViewModelProvider);
    final homeViewModel = ref.watch(homeViewModelProvider.notifier);
    final l10n = AppLocalizations.of(context);

    return Scaffold(
      backgroundColor: AppColors.darkShade18,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: EdgeInsets.only(left: 10.w, top: 6.h),
          child: textInput(
            fillColor: AppColors.pW100,
            isFilled: true,
            hint: l10n!.search,
            icon: SvgPicture.asset(
              Assets.images.svg.search,
              width: 24.w,
              height: 24.h,
              fit: BoxFit.scaleDown,
            ),
            context: context,
            validate: (val) {},
          ),
        ),
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: InkWell(
              onTap: () {},
              child: CircleAvatar(
                child: SvgPicture.asset(
                  Assets.images.svg.pageInfo,
                  width: 15.w,
                  height: 15.h,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 75.h, left: 25.w),
        child: Theme(
          data: Theme.of(context).copyWith(
            floatingActionButtonTheme: FloatingActionButtonThemeData(
              extendedSizeConstraints:
                  BoxConstraints.tightFor(width: 160.w, height: 50.h),
              backgroundColor: AppColors.darkShade73.withOpacity(0.8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.r),
              ),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FloatingActionButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    child: SvgPicture.asset(
                      Assets.images.svg.stack,
                      width: 24.w,
                      height: 24.h,
                      color: AppColors.pW100,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  FloatingActionButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    child: SvgPicture.asset(
                      Assets.images.svg.direction,
                      width: 24.w,
                      height: 24.h,
                      color: AppColors.pW100,
                    ),
                  ),
                ],
              ),
              Expanded(child: Container()),
              FloatingActionButton.extended(
                onPressed: () {},
                label: Row(
                  children: [
                    SvgPicture.asset(
                      Assets.images.svg.list,
                      width: 15.w,
                      height: 15.h,
                      color: AppColors.pW100,
                    ),
                    SizedBox(width: 10.h),
                    Text(
                      l10n.listVariants,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.pW100,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.sp),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
              child: Container(
            color: AppColors.darkShade18,
          )),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: bottomNavigationbar(
              currentIndex: currentIndex,
              onPress: (val) {
                homeViewModel.setCurrentIndex(index: val);
              },
            ),
          )
        ],
      ),
    );
  }
}
