import 'package:flutter/material.dart';

import 'package:geobase/src/presentation/core/constants/constants.dart';
import 'package:geobase/src/presentation/core/router.dart';
import 'package:geobase/src/presentation/core/theme.dart';

export 'package:flutter/material.dart';

class GeoBaseApp extends StatelessWidget {
  final GeobaseRouter _router = GeobaseRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: APP_NAME,
      theme: geobaseLightTheme,
      //AutoRoute
      routerDelegate: _router.delegate(),
      routeInformationParser: _router.defaultRouteParser(),
    );
  }
}
