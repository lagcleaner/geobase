import 'dart:async';
import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:geobase/src/infrastructure/providers/interfaces/i_location_provider.dart';
import 'package:injectable/injectable.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';

@LazySingleton(as: ILocationProvider)
class LocationProvider implements ILocationProvider {
  LocationProvider();

  Location get _location => Location.instance;

  int _refreshInterval = 1000;

  Future<PermissionStatus> get permission async {
    return _location.requestPermission();
  }

  @override
  Future<bool> changeRefreshInterval(Duration refreshInterval) async {
    if (refreshInterval.inMilliseconds == _refreshInterval) return true;

    assert(refreshInterval.inMilliseconds >= 1000);
    _refreshInterval = refreshInterval.inMilliseconds;

    return _location.changeSettings(
      interval: refreshInterval.inMilliseconds,
    );
  }

  @override
  Future<bool> initialize() async {
    var permissionGranted = false;
    try {
      final serviceEnabled = await _location.serviceEnabled();
      permissionGranted =
          serviceEnabled && (await permission) == PermissionStatus.granted;
    } on PlatformException catch (e) {
      log(e.toString());
      // if (e.code == 'PERMISSION_DENIED') {
      //   _serviceError = e.message;
      // } else if (e.code == 'SERVICE_STATUS_ERROR') {
      //   _serviceError = e.message;
      // }
    }
    return permissionGranted;
  }

  @override
  Future<LatLng> get location async {
    await _checkInitializationOrThrowException();

    final data = await _location.getLocation();
    return LatLng(data.latitude!, data.longitude!);
  }

  @override
  // TODO: implement onLocationChanged
  Stream<LatLng> get onLocationChanged {
    // _checkInitializationOrThrowException();
    return _location.onLocationChanged
        .where((event) => event.latitude != null && event.longitude != null)
        .map<LatLng>((event) => LatLng(event.latitude!, event.longitude!));
  }

  @override
  Future<bool> disable() async {
    return true;
    // TODO: implement disable
    // throw UnimplementedError();
  }

  Future<void> _checkInitializationOrThrowException() async {
    if (await permission != PermissionStatus.granted) {
      final isInitialized = await initialize();
      if (!isInitialized) throw Exception('Location service not initialized.');
    } else {
      throw Exception('Location service not permited.');
    }
  }
}
