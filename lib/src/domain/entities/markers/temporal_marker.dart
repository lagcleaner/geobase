import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:latlong2/latlong.dart';

import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/app.dart';

class TemporaryMarker implements IMarkable {
  @override
  final Color color;

  @override
  final LatLng point;

  TemporaryMarker({
    this.color = Colors.orange,
    required this.point,
  });

  @override
  Key? get key => UniqueKey();
}
