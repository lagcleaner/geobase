import 'package:geobase/src/domain/entities/geodata_entity.dart';

class GeodataPutEntity extends GeodataEntity {
  GeodataPutEntity({
    required double latitude,
    required double longitude,
    required this.id,
    required this.categoryId,
  }) : super(latitude: latitude, longitude: longitude);

  final int id;

  final int categoryId;
}
