import 'package:geobase/src/infrastructure/models/models.dart';

class GeodataGetModel extends GeodataModel {
  GeodataGetModel({
    required super. latitude,
    required super. longitude,
    required this.id,
    required this.category,
    required this.color,
    required this.materialIconCodePoint,
    required this.fields,
  }) ;

  final int id;

  final CategoryGetModel category;

  final int? color;

  final String materialIconCodePoint;

  final List<FieldValueGetModel> fields;
}
