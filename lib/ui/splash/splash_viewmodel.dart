import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:moniepoint_test/config/router/routes.dart';

class SplashViewModel {
  navigate({required BuildContext context}) {
    context.goNamed(AppRoutes.homeView);
  }
}
