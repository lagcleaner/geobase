import 'package:flutter/material.dart';

import 'src/core/constants/constants.dart';
import 'src/presentation/router/router.dart';
import 'src/presentation/theme/theme.dart';

export 'package:flutter/material.dart';

class GeoBaseApp extends StatelessWidget {
  final GeobaseRouter _router = GeobaseRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: APP_NAME,
      theme: themeLight,
      routerDelegate: _router.delegate(),
      routeInformationParser: _router.defaultRouteParser(),
    );
  }
}
