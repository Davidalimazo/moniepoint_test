import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moniepoint_test/config/router/app_router.dart';
import 'package:moniepoint_test/config/theme/app_theme.dart';
import 'package:moniepoint_test/main.dart';
export "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:fluttertoast/fluttertoast.dart";

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late FToast fToast;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 740),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            child: MaterialApp.router(
              routerConfig: router,
              builder: FToastBuilder(),
              debugShowCheckedModeBanner: false,
              title: "EST",
              theme: CustomTheme.lightTheme(),
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
            ),
          );
        });
  }
}
