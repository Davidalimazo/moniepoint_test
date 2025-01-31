import 'package:go_router/go_router.dart';
import 'package:moniepoint_test/ui/home/home_view.dart';
import 'package:moniepoint_test/ui/splash/splash_view.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'SplashView',
      builder: (context, state) => SplashView(),
    ),
    GoRoute(
      path: '/home',
      name: 'HomeView',
      builder: (context, state) => HomeView(),
    ),
  ],
);
