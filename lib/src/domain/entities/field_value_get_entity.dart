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

  FieldValueGetEntity copyWith({
    int? id,
    int? geodataId,
    ColumnGetEntity? column,
    dynamic value,
  }) {
    return FieldValueGetEntity(
      value: value,
      id: id ?? this.id,
      geodataId: geodataId ?? this.geodataId,
      column: column ?? this.column,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FieldValueGetEntity &&
        other.id == id &&
        other.geodataId == geodataId &&
        other.value == value &&
        other.column == column;
  }

  @override
  int get hashCode =>
      id.hashCode ^ geodataId.hashCode ^ column.hashCode ^ value.hashCode;
}
