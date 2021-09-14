import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../entities.dart';
import 'field_value.dart';

part 'composed_field_value.g.dart';

@JsonSerializable()
class ComposedFieldValue extends FieldValue {
  final Map<String, dynamic> properties;

  ComposedFieldValue({
    required FieldType type,
    required this.properties,
  })  : assert(type.maybeMap(composed: (_) => true, orElse: () => false)),
        super(type);

  P getProperty<P>(String propertyName) => properties[propertyName] as P;

  FieldType? getPropertyType(String propertyName) => type.maybeMap(
      composed: (cType) => cType.fieldTypes[propertyName], orElse: () => null);

  Iterable<_ValueTypePair> getAllProperties() {
    final fieldTypes = (type as ComposedFieldType).fieldTypes;
    return fieldTypes.entries
        .map((ft) => _ValueTypePair(type: ft.value, value: properties[ft.key]));
  }

  factory ComposedFieldValue.fromJson(Map<String, dynamic> json) =>
      _$ComposedFieldValueFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ComposedFieldValueToJson(this);
}

class _ValueTypePair {
  FieldType type;
  dynamic value;

  _ValueTypePair({
    required this.type,
    required this.value,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is _ValueTypePair &&
        other.type == type &&
        other.value == value;
  }

  @override
  int get hashCode => type.hashCode ^ value.hashCode;
}
