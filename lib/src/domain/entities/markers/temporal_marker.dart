import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:latlong2/latlong.dart';

class TemporaryMarker implements IMarkable {
  TemporaryMarker({
    this.color = Colors.orange,
    required this.point,
  });

  @override
  final Color color;

  @override
  final LatLng point;

  @override
  Key? get key => UniqueKey();
}
