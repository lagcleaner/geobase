import 'package:geobase/src/infrastructure/models/field_value_model.dart';

class FieldValuePutModel extends FieldValueModel {
  FieldValuePutModel({
    required super.value,
    required this.id,
    required this.geodataId,
    required this.columnId,
  });

  final int id;

  final int geodataId;

  final int columnId;
}
