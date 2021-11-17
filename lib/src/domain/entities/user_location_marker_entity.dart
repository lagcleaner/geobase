import 'package:geobase/src/domain/entities/i_markable_entity.dart';
import 'package:latlong2/latlong.dart';

class UserLocationMarkerEntity extends IMarkable {
  UserLocationMarkerEntity({
    this.color = 0x88880088, //TODO: PUT A DEFAULT ICON AND COLOR HERE
    this.icon,
    required this.location,
  });

  @override
  final int color;

  @override
  final LatLng location;

  @override
  final int? icon;

  @override
  final int? id = null;
}
