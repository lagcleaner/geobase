import 'dart:ui';

import 'package:geobase/src/domain/entities/i_markable_entity.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:latlong2/latlong.dart';

class TemporalMarkerEntity extends IMarkable {
  TemporalMarkerEntity({
    this.color = 0x88888888, //TODO: PUT A DEFAULT ICON AND COLOR HERE
    required this.icon,
    required this.location,
  });

  @override
  final int color;

  @override
  final String icon;

  @override
  final LatLng location;

  @override
  final int? id = null;
}
