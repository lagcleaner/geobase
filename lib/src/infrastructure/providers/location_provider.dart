import 'dart:async';

import 'package:geobase/src/infrastructure/providers/interfaces/i_location_provider.dart';
import 'package:injectable/injectable.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';

@LazySingleton(as: ILocationProvider)
class LocationProvider implements ILocationProvider {
  LocationProvider();

  Location get _locationInstance => Location();

  @override
  Future<void> requestEnable() async {
    await _requestService();
    await _requestPermission();
  }

  @override
  Future<bool> get isEnabled async => _locationInstance.serviceEnabled();

  Future<void> _requestService() async {
    var serviceEnabled = await _locationInstance.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await _locationInstance.requestService();
    }
    if (!serviceEnabled) return;
  }

  Future<void> _requestPermission() async {
    var _permissionGranted = await _locationInstance.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await _locationInstance.requestPermission();
    }
    if (_permissionGranted != PermissionStatus.granted) return;
  }

  @override
  Future<LatLng> get location async {
    // await requestEnable();
    if (!await isEnabled) throw Exception('Location Service Disabled');

    final data = await _locationInstance.getLocation();
    return LatLng(data.latitude!, data.longitude!);
  }

  @override
  Stream<LatLng> get onLocationChanged {
    return _locationInstance.onLocationChanged
        .where((event) => event.latitude != null && event.longitude != null)
        .map<LatLng>((event) => LatLng(event.latitude!, event.longitude!));
  }
}
