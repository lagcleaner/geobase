import 'package:geobase/src/infrastructure/models/category_get_model.dart';
import 'package:geobase/src/infrastructure/models/geodata_model.dart';
import 'package:geobase/src/infrastructure/models/models.dart';

class GeodataGetModel extends GeodataModel {
  GeodataGetModel({
    required double latitude,
    required double longitude,
    required this.id,
    required this.category,
    this.color,
    this.materialIconCodePoint,
    required this.fields,
  }) : super(latitude: latitude, longitude: longitude);

  final int id;

  final CategoryGetModel category;

  final int? color;

  final int? materialIconCodePoint;

  final List<FieldValueGetModel> fields;
}
