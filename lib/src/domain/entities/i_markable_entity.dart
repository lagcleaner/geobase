import 'package:geobase/src/presentation/core/app.dart';
import 'package:latlong2/latlong.dart';

abstract class IMarkable {
  int? get id;

  LatLng get location;

  ///material Icon Name
  String? get icon;

  /// 32 bit color value in ARGB format.
  int? get color;
}
