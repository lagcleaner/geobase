import 'package:geobase/src/domain/entities/category_get_entity.dart';
import 'package:geobase/src/domain/entities/field_value_get_entity.dart';
import 'package:geobase/src/domain/entities/geodata_entity.dart';
import 'package:geobase/src/domain/entities/i_markable_entity.dart';
import 'package:latlong2/latlong.dart';

class GeodataGetEntity extends GeodataEntity implements IMarkable {
  GeodataGetEntity({
    required super. latitude,
    required super. longitude,
    required this.id,
    required this.category,
    required this.color,
    required this.icon,
    required this.fields,
  }) ;

  @override
  final int id;

  final CategoryGetEntity category;

  @override
  final int? color;

  @override
  final String icon;

  final List<FieldValueGetEntity> fields;

  @override
  LatLng get location => LatLng(latitude, longitude);
}
