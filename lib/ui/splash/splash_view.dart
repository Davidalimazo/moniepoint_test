import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:moniepoint_test/gen/assets.gen.dart';
import 'package:moniepoint_test/gen/fonts.gen.dart';
import 'package:moniepoint_test/ui/splash/splash_providers.dart';
import 'package:moniepoint_test/ui/splash/splash_viewmodel.dart';

class SplashView extends ConsumerWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isTablet = MediaQuery.of(context).size.width > 600;
    final l10n = AppLocalizations.of(context);
    SplashViewModel splashViewModel = ref.read(splashViewModelProvider);

    Future.delayed(
      const Duration(seconds: 5),
      () {
        splashViewModel.navigate(context: context);
      },
    );

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.png.splashBackground.path),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
            child: Flex(
          direction: Axis.vertical,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.images.png.logo.path,
                width: isTablet ? 83.w : 63.w, height: isTablet ? 83.h : 63.w),
            20.verticalSpace,
            Text(l10n!.est,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 35.sp,
                    fontFamily: FontFamily.sora,
                    color: Colors.white,
                    fontWeight: FontWeight.w700)),
            Text(l10n.realEstate,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25.sp,
                    fontFamily: FontFamily.geist,
                    color: Colors.white,
                    fontWeight: FontWeight.w300)),
          ],
        )),
      ),
    );
  }
}
