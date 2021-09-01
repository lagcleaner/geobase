import 'package:auto_route/annotations.dart';
import 'package:geobase/src/presentation/views/home/home_page.dart';

export 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(path: '/home', page: HomePage),
    RedirectRoute(path: '/', redirectTo: '/home'),
  ],
)
class $GeobaseRouter {}
