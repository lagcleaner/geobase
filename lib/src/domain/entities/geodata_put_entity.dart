import 'package:geobase/src/domain/entities/entities.dart';

class GeodataPutEntity extends GeodataEntity {
  GeodataPutEntity({
    required double latitude,
    required double longitude,
    required this.id,
    required this.categoryId,
    required this.fieldValues,
  }) : super(latitude: latitude, longitude: longitude);

  final int id;

  final int categoryId;

  final List<FieldValuePutEntity> fieldValues;
}
