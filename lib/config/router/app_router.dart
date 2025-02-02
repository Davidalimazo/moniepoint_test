import 'package:go_router/go_router.dart';
import 'package:moniepoint_test/config/router/routes.dart';
import 'package:moniepoint_test/ui/home/home_view.dart';
import 'package:moniepoint_test/ui/search/search_view.dart';
import 'package:moniepoint_test/ui/splash/splash_view.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: AppRoutes.splashView.url,
      name: AppRoutes.splashView.name,
      builder: (context, state) => SplashView(),
    ),
    GoRoute(
      path: AppRoutes.searchView.url,
      name: AppRoutes.searchView.name,
      builder: (context, state) => SearchView(),
    ),
    GoRoute(
      path: AppRoutes.homeView.url,
      name: AppRoutes.homeView.name,
      builder: (context, state) => HomeView(),
    ),
  ],
);
