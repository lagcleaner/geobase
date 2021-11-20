import 'package:geobase/src/domain/entities/field_value_entity.dart';

class FieldValuePutEntity extends FieldValueEntity {
  FieldValuePutEntity({
    required dynamic value,
    required this.id,
    required this.geodataId,
    required this.columnId,
  }) : super(value: value);

  final int id;

  final int geodataId;

  final int columnId;

  @override
  FieldValueEntity copyWithValue(dynamic value) {
    return FieldValuePutEntity(
      id: id,
      value: value,
      columnId: columnId,
      geodataId: geodataId,
    );
  }
}
