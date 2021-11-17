import 'package:geobase/src/domain/entities/category_get_entity.dart';
import 'package:geobase/src/domain/entities/field_value_get_entity.dart';
import 'package:geobase/src/domain/entities/geodata_entity.dart';
import 'package:geobase/src/domain/entities/i_markable_entity.dart';
import 'package:latlong2/latlong.dart';

class GeodataGetEntity extends GeodataEntity implements IMarkable {
  GeodataGetEntity({
    required double latitude,
    required double longitude,
    required this.id,
    required this.category,
    this.color,
    this.icon,
    required this.fields,
  }) : super(latitude: latitude, longitude: longitude);

  @override
  final int id;

  final CategoryGetEntity category;

  final int? color;

  final int? icon;

  final List<FieldValueGetEntity> fields;

  @override
  LatLng get location => LatLng(latitude, longitude);
}
