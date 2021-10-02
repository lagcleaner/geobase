import 'package:flutter/widgets.dart';
import 'package:latlong2/latlong.dart';

abstract class IMarkable {
  String? get id;
  LatLng get location;
  Color? get color;
}

// mixin KeyReferenciableMarker on IMarkable {
//   Key? _key;
//   Key get key {
//     return _key ??= id != null ? Key(id!) : UniqueKey();
//   }
// }
