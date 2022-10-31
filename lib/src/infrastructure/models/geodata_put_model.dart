import 'package:geobase/src/infrastructure/models/field_value_put_model.dart';
import 'package:geobase/src/infrastructure/models/geodata_model.dart';

class GeodataPutModel extends GeodataModel {
  GeodataPutModel({
    required super.latitude,
    required super.longitude,
    required this.id,
    required this.categoryId,
    required this.fieldValues,
  });

  final int id;

  final int categoryId;

  final List<FieldValuePutModel> fieldValues;
}
