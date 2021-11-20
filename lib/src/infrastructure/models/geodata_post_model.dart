import 'package:geobase/src/infrastructure/models/field_value_post_model.dart';
import 'package:geobase/src/infrastructure/models/geodata_model.dart';

class GeodataPostModel extends GeodataModel {
  GeodataPostModel({
    required double latitude,
    required double longitude,
    required this.categoryId,
    required this.fieldValues,
  }) : super(latitude: latitude, longitude: longitude);

  final int categoryId;

  final List<FieldValuePostModel> fieldValues;
}
