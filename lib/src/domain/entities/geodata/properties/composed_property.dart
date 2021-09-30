import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/entities/geodata/properties/property.dart';

part 'composed_property.g.dart';

@JsonSerializable()
class ComposedProperty extends GeoDataProperty {
  ComposedProperty({
    required FieldType type,
    required this.subProperties,
  })  : assert(type.maybeMap(composed: (_) => true, orElse: () => false)),
        super(type);

  factory ComposedProperty.fromJson(Map<String, dynamic> json) =>
      _$ComposedPropertyFromJson(json);

  final Map<String, dynamic> subProperties;

  P getSubProperty<P>(String propertyName) => subProperties[propertyName] as P;

  FieldType? getSubPropertyType(String propertyName) => type.maybeMap(
        composed: (cType) => cType.fieldTypes[propertyName],
        orElse: () => null,
      );

  Iterable<_ValueTypePair> getAllSubProperties() {
    final fieldTypes = (type as ComposedFieldType).fieldTypes;
    return fieldTypes.entries.map(
      (ft) => _ValueTypePair(type: ft.value, value: subProperties[ft.key]),
    );
  }

  @override
  Map<String, dynamic> toJson() => _$ComposedPropertyToJson(this);
}

class _ValueTypePair {
  _ValueTypePair({
    required this.type,
    required this.value,
  });

  FieldType type;
  dynamic value;

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
