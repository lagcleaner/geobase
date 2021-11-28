import 'package:geobase/src/domain/entities/i_markable_entity.dart';
import 'package:latlong2/latlong.dart';

class TemporalMarkerEntity extends IMarkable {
  TemporalMarkerEntity({
    this.color = 0xAA888888,
    this.icon,
    required this.location,
  });

  @override
  final int color;

  @override
  final String? icon;

  @override
  final LatLng location;

  @override
  final int? id = null;
}
