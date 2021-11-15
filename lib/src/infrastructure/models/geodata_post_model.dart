import 'package:geobase/src/infrastructure/models/geodata_model.dart';

class GeodataPostModel extends GeodataModel {
  GeodataPostModel({
    required double latitude,
    required double longitude,
    required this.categoryId,
  }) : super(latitude: latitude, longitude: longitude);

  final int categoryId;
}
