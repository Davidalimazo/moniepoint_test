abstract class AppRoutes {
  static const RouteObjectModel splashView =
      RouteObjectModel(name: 'SplashView', url: '/');
  static const RouteObjectModel homeView =
      RouteObjectModel(name: 'HomeView', url: '/homeView');
  static const RouteObjectModel searchView =
      RouteObjectModel(name: 'SearchView', url: '/searchView');
}

class RouteObjectModel {
  final String url;
  final String name;
  const RouteObjectModel({required this.name, required this.url});
}
