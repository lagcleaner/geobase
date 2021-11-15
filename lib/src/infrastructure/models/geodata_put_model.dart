import 'package:geobase/src/infrastructure/models/geodata_model.dart';

class GeodataPutModel extends GeodataModel {
  GeodataPutModel({
    required double latitude,
    required double longitude,
    required this.id,
    required this.categoryId,
  }) : super(latitude: latitude, longitude: longitude);

  final int id;

  final int categoryId;
}
