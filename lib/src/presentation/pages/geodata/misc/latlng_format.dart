import 'package:latlong2/latlong.dart';

extension LatLngPrettyPrint on LatLng {
  String visualString() {
    return toString().substring(6);
  }
}
