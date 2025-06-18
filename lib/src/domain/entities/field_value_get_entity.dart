import 'package:geobase/src/domain/entities/column_get_entity.dart';
import 'package:geobase/src/domain/entities/field_value_entity.dart';

class FieldValueGetEntity extends FieldValueEntity {

  // Factory para deserialización desde JSON
  factory FieldValueGetEntity.fromJson(Map<String, dynamic> json) {
    return FieldValueGetEntity.fromMap(json);
  }
  FieldValueGetEntity({
    required super.value,
    required this.id,
    required this.geodataId,
    required this.column,
  });

  // Constructor para deserialización
  factory FieldValueGetEntity.fromMap(Map<String, dynamic> map) {
    return FieldValueGetEntity(
      value: map['value'],
      id: map['id'] as int,
      geodataId: map['geodataId'] as int,
      column: ColumnGetEntity.fromMap(map['column'] as Map<String, dynamic>),
    );
  }

  final int id;
  final int geodataId;
  final ColumnGetEntity column;

  // Método para serialización
  Map<String, dynamic> toMap() {
    return {
      'value': value,
      'id': id,
      'geodataId': geodataId,
      'column': column.toJson(),
    };
  }

  // Versión JSON (puede ser igual a toMap o diferente según necesidades)
  Map<String, dynamic> toJson() {
    return toMap();
  }

  FieldValueGetEntity copyWith({
    int? id,
    int? geodataId,
    ColumnGetEntity? column,
    dynamic value,
  }) {
    return FieldValueGetEntity(
      value: value ?? this.value,
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

  @override
  FieldValueEntity copyWithValue(dynamic value) {
    return FieldValueGetEntity(
      value: value,
      id: id,
      geodataId: geodataId,
      column: column,
    );
  }
}