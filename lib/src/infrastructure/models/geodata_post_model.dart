import 'package:geobase/src/infrastructure/models/field_value_post_model.dart';
import 'package:geobase/src/infrastructure/models/geodata_model.dart';

class GeodataPostModel extends GeodataModel {
  GeodataPostModel({
    required super.latitude,
    required super.longitude,
    required this.categoryId,
    required this.fieldValues,
  });

  final int categoryId;

  final List<FieldValuePostModel> fieldValues;
}
