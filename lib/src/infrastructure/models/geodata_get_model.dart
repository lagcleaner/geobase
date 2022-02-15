import 'package:geobase/src/infrastructure/models/models.dart';

class GeodataGetModel extends GeodataModel {
  GeodataGetModel({
    required double latitude,
    required double longitude,
    required this.id,
    required this.category,
    required this.color,
    required this.materialIconCodePoint,
    required this.fields,
  }) : super(latitude: latitude, longitude: longitude);

  final int id;

  final CategoryGetModel category;

  final int? color;

  final String materialIconCodePoint;

  final List<FieldValueGetModel> fields;
}
