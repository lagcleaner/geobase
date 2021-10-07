import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:geobase/src/presentation/core/constants/constants.dart';
import 'package:geobase/src/presentation/core/theme.dart';
import 'package:geobase/src/presentation/router/router.dart';

export 'package:flutter/material.dart';

class GeoBaseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BeamerProvider(
      routerDelegate: Routes.routerDelegate,
      child: MaterialApp.router(
        title: APP_NAME,
        theme: geobaseLightTheme,
        //Beamer
        backButtonDispatcher: Routes.backButtonDispatcher,
        routerDelegate: Routes.routerDelegate,
        routeInformationParser: Routes.routeInformationParser,
      ),
    );
  }
}
