import 'package:geobase/src/domain/entities/entities.dart';

class GeodataPostEntity extends GeodataEntity {
  GeodataPostEntity({
    required super. latitude,
    required super. longitude,
    required this.categoryId,
    required this.fieldValues,
  }) ;

  final int categoryId;

  final List<FieldValuePostEntity> fieldValues;
}
