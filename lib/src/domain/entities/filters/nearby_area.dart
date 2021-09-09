import 'dart:math' as math;

import 'package:latlong2/latlong.dart';

class NearbyArea {
  final LatLng center;
  final double radio;

  NearbyArea({
    required this.center,
    required this.radio,
  });

  factory NearbyArea.exactLatLng(LatLng center) =>
      NearbyArea(center: center, radio: 0);

  bool nearTo(LatLng coord) =>
      radio >=
      math.sqrt(math.pow(coord.latitude - center.latitude, 2) +
          math.pow(coord.longitude - center.longitude, 2));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is NearbyArea &&
        other.center == center &&
        other.radio == radio;
  }

  @override
  int get hashCode => center.hashCode ^ radio.hashCode;
}
