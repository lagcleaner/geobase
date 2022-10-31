import 'package:geobase/src/domain/entities/entities.dart';

class GeodataPutEntity extends GeodataEntity {
  GeodataPutEntity({
    required super.latitude,
    required super.longitude,
    required this.id,
    required this.categoryId,
    required this.fieldValues,
  });

  final int id;

  final int categoryId;

  final List<FieldValuePutEntity> fieldValues;
}
