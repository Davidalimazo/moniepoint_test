import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moniepoint_test/config/theme/app_colors.dart';
import 'package:moniepoint_test/config/theme/dimensions.dart';
import 'package:moniepoint_test/gen/assets.gen.dart';
import 'package:moniepoint_test/gen/fonts.gen.dart';
import 'package:moniepoint_test/main.dart';
import 'package:moniepoint_test/ui/search/search_provider.dart';
import 'package:moniepoint_test/ui/widgets/widget_utils.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  Widget animatedCard({
    required BuildContext context,
    required double outerWidth,
    required double innerWidth,
    required double height,
  }) =>
      Container(
        width: AppSizes.screenWidth * .95,
        height: height.h,
        padding: EdgeInsets.all(10.w),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.images.png.apartment1.path),
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
            borderRadius: BorderRadius.circular(40.r)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox.shrink(),
            Stack(
              children: [
                Container(
                  width: AppSizes.screenWidth * .85,
                  height: 45.h,
                  decoration: BoxDecoration(
                      color: AppColors.translucent.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(25.r)),
                  child: Center(
                      child: Text(
                    'Gladkova Str,. 25',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.darkShade20,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.normal,
                        fontFamily: FontFamily.poppins),
                  )),
                ).animate().fade(duration: 1700.ms).slideY(curve: Curves.ease),
                Positioned(
                  right: 0,
                  top: (45 - 50) / 2,
                  child: Container(
                    width: 50,
                    height: 51,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.pW100,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.black,
                        size: 12.w,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ).animate().fadeIn(duration: 2500.ms).slideX(
                    duration: 1500.ms, begin: -60, end: 0, curve: Curves.ease)
              ],
            )
          ],
        ),
      ).animate().fade(duration: 1800.ms).slideY(curve: Curves.ease);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AppSizes().initSizes(context: context);
    final currentIndex = ref.watch(searchViewModelProvider);
    final homeViewModel = ref.watch(searchViewModelProvider.notifier);
    // final l10n = AppLocalizations.of(context);
    return Scaffold(
      backgroundColor: AppColors.fadePrimary,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          height: 46.h,
          width: 180.w,
          decoration: BoxDecoration(
              color: AppColors.pW100,
              borderRadius: BorderRadius.circular(12.r)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Assets.images.svg.location,
                height: 18.h,
              ),
              10.horizontalSpace,
              Text(
                'Saint Petersburg',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppColors.secondaryText,
                      fontSize: 13.sp,
                    ),
              )
            ],
          ),
        ).animate().fade(duration: 500.ms).slideY(curve: Curves.ease),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.w),
            child: CircleAvatar(
              radius: 25.r,
              backgroundImage: AssetImage(Assets.images.png.handsome.path),
            ),
          ).animate().fade(duration: 800.ms).slideY(curve: Curves.ease)
        ],
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: 10.w),
        child: bottomNavigationbar(
          currentIndex: currentIndex,
          onPress: (val) {
            homeViewModel.setCurrentIndex(index: val);
          },
        ),
      ).animate().fade(duration: 2200.ms).slideY(curve: Curves.ease),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [AppColors.pW100, AppColors.primaryFade],
          ),
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 800.h,
              child: Stack(
                children: [
                  Positioned.fill(
                      child: Container(
                    color: Colors.transparent,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          10.verticalSpace,
                          Text(
                            'Hi, Isaac',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    color: AppColors.secondaryText,
                                    fontSize: 18.sp,
                                    fontFamily: FontFamily.poppins),
                          )
                              .animate()
                              .fade(duration: 1000.ms)
                              .slideY(curve: Curves.ease),
                          10.verticalSpace,
                          Text(
                            "let's select your \nperfect place",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    color: AppColors.darkShade45,
                                    fontSize: 27.sp,
                                    fontFamily: FontFamily.poppins),
                          )
                              .animate()
                              .fade(duration: 1200.ms)
                              .slideY(curve: Curves.ease),
                          10.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 150.w,
                                height: 150,
                                padding: EdgeInsets.all(10.dg),
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.primary),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'BUY',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                              color: AppColors.pW100,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: FontFamily.poppins),
                                    ),
                                    20.verticalSpace,
                                    Animate().custom(
                                      duration: 1500.milliseconds,
                                      begin: 0,
                                      end: 1034,
                                      builder: (_, value, __) => Text(
                                          '${value.round()}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium
                                              ?.copyWith(
                                                  color: AppColors.pW100,
                                                  fontSize: 25.sp,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily:
                                                      FontFamily.poppins)),
                                    ),
                                    Text(
                                      'Offers',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                              color: AppColors.pW100,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14.sp,
                                              fontFamily: FontFamily.poppins),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 150.w,
                                height: 150,
                                padding: EdgeInsets.all(10.dg),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.r),
                                    shape: BoxShape.rectangle,
                                    color: AppColors.pW100),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'RENT',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                              color: AppColors.secondaryText,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: FontFamily.poppins),
                                    ),
                                    20.verticalSpace,
                                    Animate().custom(
                                      duration: 1500.milliseconds,
                                      begin: 0,
                                      end: 2212,
                                      builder: (_, value, __) => Text(
                                          '${value.round()}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium
                                              ?.copyWith(
                                                  color:
                                                      AppColors.secondaryText,
                                                  fontSize: 25.sp,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily:
                                                      FontFamily.poppins)),
                                    ),
                                    Text(
                                      'Offers',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                              color: AppColors.secondaryText,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14.sp,
                                              fontFamily: FontFamily.poppins),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )
                              .animate()
                              .fade(duration: 1500.ms)
                              .slideY(curve: Curves.ease)
                        ],
                      ),
                    ),
                  )),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    top: 300.h,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.r),
                        topRight: Radius.circular(40.r),
                      ),
                      child: Container(
                          color: AppColors.pW100,
                          child: Column(
                            children: [
                              10.verticalSpace,
                              //
                              animatedCard(
                                  context: context,
                                  height: 150,
                                  innerWidth: AppSizes.screenWidth * .85,
                                  outerWidth: AppSizes.screenWidth * .95),
                              10.verticalSpace,
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.w),
                                child: Row(
                                  children: [
                                    Container(
                                      width: AppSizes.screenWidth * .44,
                                      height: 300.h,
                                      padding: EdgeInsets.all(10.w),
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(Assets
                                                .images.png.livingSpace.path),
                                            fit: BoxFit.cover,
                                            alignment: Alignment.center,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(40.r)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const SizedBox.shrink(),
                                          Stack(
                                            children: [
                                              Container(
                                                width:
                                                    AppSizes.screenWidth * .35,
                                                height: 45.h,
                                                decoration: BoxDecoration(
                                                    color: AppColors.translucent
                                                        .withOpacity(0.9),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25.r)),
                                                child: Center(
                                                    child: Text(
                                                  'Gladkova Str,. 25',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium
                                                      ?.copyWith(
                                                          color: AppColors
                                                              .darkShade20,
                                                          fontSize: 12.sp,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontFamily: FontFamily
                                                              .poppins),
                                                )),
                                              ),
                                              Positioned(
                                                right: 0,
                                                top: (45 - 50) / 2,
                                                child: Container(
                                                  width: 50,
                                                  height: 51,
                                                  decoration:
                                                      const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: AppColors.pW100,
                                                  ),
                                                  child: IconButton(
                                                    icon: Icon(
                                                      Icons
                                                          .arrow_forward_ios_sharp,
                                                      color: Colors.black,
                                                      size: 12.w,
                                                    ),
                                                    onPressed: () {},
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    10.horizontalSpace,
                                    Column(
                                      children: [
                                        Container(
                                          width: AppSizes.screenWidth * .445,
                                          height: 150.h,
                                          padding: EdgeInsets.all(10.w),
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(Assets
                                                    .images.png.sofa.path),
                                                fit: BoxFit.cover,
                                                alignment: Alignment.center,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(40.r)),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const SizedBox.shrink(),
                                              Stack(
                                                children: [
                                                  Container(
                                                    width:
                                                        AppSizes.screenWidth *
                                                            .35,
                                                    height: 45.h,
                                                    decoration: BoxDecoration(
                                                        color: AppColors
                                                            .translucent
                                                            .withOpacity(0.9),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    25.r)),
                                                    child: Center(
                                                        child: Text(
                                                      'Gladkova Str,. 25',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyMedium
                                                          ?.copyWith(
                                                              color: AppColors
                                                                  .darkShade20,
                                                              fontSize: 12.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              fontFamily:
                                                                  FontFamily
                                                                      .poppins),
                                                    )),
                                                  ),
                                                  Positioned(
                                                    right: 0,
                                                    top: (45 - 50) / 2,
                                                    child: Container(
                                                      width: 50,
                                                      height: 51,
                                                      decoration:
                                                          const BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: AppColors.pW100,
                                                      ),
                                                      child: IconButton(
                                                        icon: Icon(
                                                          Icons
                                                              .arrow_forward_ios_sharp,
                                                          color: Colors.black,
                                                          size: 12.w,
                                                        ),
                                                        onPressed: () {},
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        10.verticalSpace,
                                        Container(
                                          width: AppSizes.screenWidth * .445,
                                          height: 150.h,
                                          padding: EdgeInsets.all(10.w),
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(Assets
                                                    .images.png.sofa.path),
                                                fit: BoxFit.cover,
                                                alignment: Alignment.center,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(40.r)),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const SizedBox.shrink(),
                                              Stack(
                                                children: [
                                                  Container(
                                                    width:
                                                        AppSizes.screenWidth *
                                                            .35,
                                                    height: 45.h,
                                                    decoration: BoxDecoration(
                                                        color: AppColors
                                                            .translucent
                                                            .withOpacity(0.9),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    25.r)),
                                                    child: Center(
                                                        child: Text(
                                                      'Gladkova Str,. 25',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyMedium
                                                          ?.copyWith(
                                                              color: AppColors
                                                                  .darkShade20,
                                                              fontSize: 12.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              fontFamily:
                                                                  FontFamily
                                                                      .poppins),
                                                    )),
                                                  ),
                                                  Positioned(
                                                    right: 0,
                                                    top: (45 - 50) / 2,
                                                    child: Container(
                                                      width: 50,
                                                      height: 51,
                                                      decoration:
                                                          const BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: AppColors.pW100,
                                                      ),
                                                      child: IconButton(
                                                        icon: Icon(
                                                          Icons
                                                              .arrow_forward_ios_sharp,
                                                          color: Colors.black,
                                                          size: 12.w,
                                                        ),
                                                        onPressed: () {},
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                                  .animate()
                                  .fade(duration: 2000.ms)
                                  .slideY(curve: Curves.ease)
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
