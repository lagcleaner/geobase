import 'package:geobase/src/domain/entities/geodata_entity.dart';

class GeodataPostEntity extends GeodataEntity {
  GeodataPostEntity({
    required double latitude,
    required double longitude,
    required this.categoryId,
  }) : super(latitude: latitude, longitude: longitude);

  final int categoryId;
}
