import 'package:geobase/src/infrastructure/models/column_get_model.dart';
import 'package:geobase/src/infrastructure/models/field_value_model.dart';

class FieldValueGetModel extends FieldValueModel {
  FieldValueGetModel({
    required dynamic value,
    required this.id,
    required this.geodataId,
    required this.column,
  }) : super(value: value);

  final int id;

  final int geodataId;

  final ColumnGetModel column;
}