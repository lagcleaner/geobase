import 'package:geobase/src/domain/entities/field_value_entity.dart';

class FieldValuePostEntity extends FieldValueEntity {
  FieldValuePostEntity({
    required dynamic value,
    this.geodataId,
    required this.columnId,
  }) : super(value: value);

  final int? geodataId;

  final int columnId;

  @override
  FieldValueEntity copyWithValue(dynamic value) {
    return FieldValuePostEntity(
      value: value,
      columnId: columnId,
      geodataId: geodataId,
    );
  }
}
