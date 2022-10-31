import 'package:geobase/src/domain/entities/field_value_entity.dart';

class FieldValuePutEntity extends FieldValueEntity {
  FieldValuePutEntity({
    required super.value,
    required this.id,
    required this.geodataId,
    required this.columnId,
  });

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
