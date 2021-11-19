import 'package:geobase/src/infrastructure/models/field_value_model.dart';

class FieldValuePutModel extends FieldValueModel {
  FieldValuePutModel({
    required dynamic value,
    required this.id,
    required this.geodataId,
    required this.columnId,
  }) : super(value: value);

  final int id;

  final int geodataId;

  final int columnId;
}