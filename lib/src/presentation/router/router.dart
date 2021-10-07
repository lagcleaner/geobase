import 'dart:developer';

import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:geobase/src/presentation/router/locations.dart';

export 'package:geobase/src/presentation/router/locations.dart';

class Routes {
  static final routerDelegate = BeamerDelegate(
    routeListener: _listener,
    locationBuilder: BeamerLocationBuilder(
      beamLocations: [
        HomeLocation(),
        CategoriesLocation(),
        GeoDataLocation(),
        NotFoundLocation(),
      ],
    ),
    initialPath: '/map',
  );

  static void _listener(
    RouteInformation routeInformation,
    BeamLocation<RouteInformationSerializable> location,
  ) {
    log('BeamTo: ${routeInformation.location}');
  }

  static final routeInformationParser = BeamerParser();

  static final backButtonDispatcher = BeamerBackButtonDispatcher(
    delegate: routerDelegate,
    fallbackToBeamBack: false,
  );
}
