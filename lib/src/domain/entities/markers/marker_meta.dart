import 'package:flutter/widgets.dart';
import 'package:latlong2/latlong.dart';

class MarkerMeta {
  final Key? key;
  final LatLng point;
  final Color? color;

  MarkerMeta({
    this.key,
    required this.point,
    this.color,
  });
}
