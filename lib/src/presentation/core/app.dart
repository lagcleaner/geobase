import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'constants/constants.dart';
import 'router.dart';
import 'theme.dart';

export 'package:flutter/material.dart';

class GeoBaseApp extends StatelessWidget {
  final GeobaseRouter _router = GeobaseRouter();
  final bool enabledDevicePreview;

  GeoBaseApp([this.enabledDevicePreview = false]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: APP_NAME,
      theme: geobaseLightTheme,
      //AutoRoute
      routerDelegate: _router.delegate(),
      routeInformationParser: _router.defaultRouteParser(),
      // //DevicePreview
      locale: enabledDevicePreview ? DevicePreview.locale(context) : null,
      builder: enabledDevicePreview ? DevicePreview.appBuilder : null,
    );
  }
}
