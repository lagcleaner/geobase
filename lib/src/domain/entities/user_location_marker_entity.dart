import 'package:geobase/src/domain/entities/i_markable_entity.dart';
import 'package:latlong2/latlong.dart';

class UserLocationMarkerEntity extends IMarkable {
  UserLocationMarkerEntity({
    this.color = 0x88880088,
    required this.icon,
    required this.location,
  });

  @override
  final int color;

  @override
  final LatLng location;

  @override
  final String icon;

  @override
  final int? id = null;
}
