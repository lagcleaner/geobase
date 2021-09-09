import 'package:flutter/foundation.dart';

import 'field_types/field_type.dart';

class Category {
  final String id;
  final String name;
  final Map<String, FieldType> fields;
  final Map<String, Category> relations;

  Category({
    required this.id,
    required this.name,
    required this.fields,
    required this.relations,
  });

  Category copyWith({
    String? id,
    String? name,
    Map<String, FieldType>? fields,
    Map<String, Category>? relations,
  }) {
    return Category(
      id: id ?? this.id,
      name: name ?? this.name,
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
        mapEquals(other.fields, fields);
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ fields.hashCode;
}
