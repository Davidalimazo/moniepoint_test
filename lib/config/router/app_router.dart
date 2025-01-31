import 'package:go_router/go_router.dart';
import 'package:moniepoint_test/ui/splash/splash_view.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'splashScreen',
      builder: (context, state) => SplashView(),
    ),
  ],
);
