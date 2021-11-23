import 'package:latlong2/latlong.dart';

abstract class ILocationProvider {
  // Future<bool> initialize();
  Future<bool> changeRefreshInterval(Duration refreshInterval);

  Future<LatLng> get location;

  Stream<LatLng> get onLocationChanged;

  Future<bool> disable();
}
