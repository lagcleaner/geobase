import 'dart:async';
import 'dart:io';

import 'package:geobase/src/infrastructure/providers/interfaces/i_location_provider.dart';
import 'package:injectable/injectable.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';

@LazySingleton(as: ILocationProvider)
class LocationProvider implements ILocationProvider {
  const LocationProvider();

  Location get _locationInstance => Location();

  @override
  Future<void> requestEnable() async {
    await _requestService();
    await _requestPermission();
  }

  @override
  Future<bool> get isEnabled async => Platform.isAndroid || Platform.isIOS
      ? (await _locationInstance.serviceEnabled()) &&
          (await _locationInstance.hasPermission()) == PermissionStatus.granted
      : false;

  Future<void> _requestService() async {
    if (!(Platform.isAndroid || Platform.isIOS)) return;

    var serviceEnabled = await _locationInstance.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await _locationInstance.requestService();
    }
    if (!serviceEnabled) return;
  }

  Future<void> _requestPermission() async {
    if (!(Platform.isAndroid || Platform.isIOS)) return;
    var permissionGranted = await _locationInstance.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await _locationInstance.requestPermission();
    }
    if (permissionGranted != PermissionStatus.granted) return;
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
    if (!(Platform.isAndroid || Platform.isIOS)) Stream.empty();
    return _locationInstance.onLocationChanged
        .where((event) => event.latitude != null && event.longitude != null)
        .map<LatLng>((event) => LatLng(event.latitude!, event.longitude!));
  }
}
