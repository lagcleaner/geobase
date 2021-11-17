import 'package:geobase/src/domain/entities/column_get_entity.dart';
import 'package:geobase/src/domain/entities/field_value_entity.dart';

class FieldValueGetEntity extends FieldValueEntity {
  FieldValueGetEntity({
    required dynamic value,
    required this.id,
    required this.geodataId,
    required this.column,
  }) : super(value: value);

  final int id;

  final int geodataId;

  final ColumnGetEntity column;
}
