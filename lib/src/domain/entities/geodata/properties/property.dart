import 'package:geobase/src/domain/entities/categories/field_types/field_type.dart';

import 'package:geobase/src/domain/entities/geodata/properties/composed_property.dart';
import 'package:geobase/src/domain/entities/geodata/properties/unitary_property.dart';

abstract class GeoDataProperty {
  GeoDataProperty(this.type);

  factory GeoDataProperty.fromJson(Map<String, dynamic> json) {
    if (json['type']['field_type'] as String == 'composed') {
      return ComposedProperty.fromJson(json);
    }
    return UnitaryProperty.fromJson(json);
  }

  final FieldType type;

  bool get isComposed => type.maybeMap(
        composed: (_) => true,
        orElse: () => false,
      );

  bool get isUnitary => !isComposed;

  Map<String, dynamic> toJson();
}
