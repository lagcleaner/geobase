import 'package:geobase/src/domain/entities/entities.dart';

class GeodataPostEntity extends GeodataEntity {
  GeodataPostEntity({
    required double latitude,
    required double longitude,
    required this.categoryId,
    required this.fieldValues,
  }) : super(latitude: latitude, longitude: longitude);

  final int categoryId;

  final List<FieldValuePostEntity> fieldValues;
}
