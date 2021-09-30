import 'dart:ui';

import 'package:flutter/foundation.dart' hide Category;
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/entities/geodata/properties/property.dart';
import 'package:latlong2/latlong.dart';

class GeoDataEntity implements IMarkable {
  GeoDataEntity({
    required this.geoDataId,
    required this.categoryId,
    this.category,
    required this.location,
    required this.properties,
    required this.realtions,
  });

  final String geoDataId;

  final String categoryId;

  final CategoryEntity? category;

  final LatLng location;

  /// 'field_name': GeoDataProperty (FieldType, value)
  final Map<String, GeoDataProperty> properties;

  /// 'field_name': (GeoData)
  final Map<String, GeoDataEntity?> realtions;

  @override
  Color? get color => category?.color ?? const Color(0xCC000000);

  @override
  Key? get key => Key(geoDataId);

  @override
  LatLng get point => location;

  /// from: -> 'field_name': {'type': FieldType, 'value': value or ...}
  /// to:   -> 'field_name': {'type': FieldType, 'value': value or ...}
  Map<String, dynamic> buildProperties(
    ComposedFieldType type,
    Map<String, dynamic> value,
  ) {
    final props = <String, dynamic>{};
    for (final t in type.fieldTypes.entries) {
      if (t.value is ComposedFieldType) {
        props[t.key] = buildProperties(
          t.value as ComposedFieldType,
          value[t.key] as Map<String, dynamic>,
        );
      } else {
        final typedValue = t.value.map(
          tbool: (_) => value[t.key] as bool,
          tint: (_) => value[t.key] as int,
          tdouble: (_) => value[t.key] as double,
          tstring: (_) => value[t.key] as String,
          year: (_) => value[t.key] as int,
          month: (_) => value[t.key] as int,
          day: (_) => value[t.key] as int,
          weekDay: (_) => value[t.key] as String,
          // FIXME: some date type unexpecified value[t.key] type
          hour: (_) => value[t.key] as int,
          minute: (_) => value[t.key] as int,
          second: (_) => value[t.key] as int,
          composed: (_) => null,
        );

        props[t.key] = {
          'type': t.value,
          'value': typedValue,
        };
      }
    }
    return props;
  }
}
