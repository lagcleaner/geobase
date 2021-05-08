// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;

import '../pages/home/home_page.dart' as _i2;

class GeobaseRouter extends _i1.RootStackRouter {
  GeobaseRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry,
          child: const _i2.HomePage(),
          maintainState: true,
          fullscreenDialog: false);
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name,
            path: '/home', fullMatch: false, usesTabsRouter: false),
        _i1.RouteConfig('/#redirect',
            path: '/', redirectTo: '/home', fullMatch: true)
      ];
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/home');

  static const String name = 'HomeRoute';
}
