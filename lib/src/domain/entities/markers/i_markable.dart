import 'package:flutter/widgets.dart';
import 'package:latlong2/latlong.dart';

abstract class IMarkable {
  final Key? key;
  final LatLng point;
  final Color? color;

  IMarkable({
    this.key,
    required this.point,
    this.color,
  });
}
