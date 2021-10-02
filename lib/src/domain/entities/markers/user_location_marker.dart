import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:latlong2/latlong.dart';

class UserLocationMarkerEntity extends IMarkable {
  UserLocationMarkerEntity({
    this.color = Colors.blue,
    required this.location,
  });

  @override
  final Color color;

  @override
  final LatLng location;

  @override
  final String? id = null;
}
