import 'package:latlong2/latlong.dart';

abstract class ILocationProvider {
  Future<bool> get isEnabled;

  Future<LatLng> get location;

  Stream<LatLng> get onLocationChanged;

  Future<void> requestEnable();
}
