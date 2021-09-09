import 'dart:ui';

import 'package:flutter/foundation.dart' show mapEquals;
import 'field_types/field_type.dart';

class Category {
  final String id;
  final String name;
  final Color? color;
  final Map<String, FieldType> fields;
  final Map<String, Category> relations;

  Category({
    required this.id,
    required this.name,
    this.color,
    required this.fields,
    required this.relations,
  });

  Category copyWith({
    String? id,
    String? name,
    Color? color,
    Map<String, FieldType>? fields,
    Map<String, Category>? relations,
  }) {
    return Category(
      id: id ?? this.id,
      name: name ?? this.name,
      color: color ?? this.color,
      fields: fields ?? this.fields,
      relations: relations ?? this.relations,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Category &&
        other.id == id &&
        other.name == name &&
        other.color == color &&
        mapEquals(other.fields, fields) &&
        mapEquals(other.relations, relations);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        color.hashCode ^
        fields.hashCode ^
        relations.hashCode;
  }

  @override
  String toString() {
    return 'Category(id: $id, name: $name, color: $color, fields: $fields, relations: $relations)';
  }
}
