import 'dart:ui';

import 'package:flutter/foundation.dart' hide Category;
import 'package:latlong2/latlong.dart';

import '../entities.dart';

class GeoData implements IMarkable {
  final String geoDataId;

  final String categoryId;

  final Category? category;

  final LatLng location;

  /// 'field_name': FieldValue (FieldType, value)
  final Map<String, dynamic> fields;

  /// 'field_name': (GeoData)
  final Map<String, GeoData> realtions;

  @override
  Color? get color => category?.color ?? const Color(0xCC000000);

  @override
  Key? get key => Key(geoDataId);

  @override
  LatLng get point => location;

  GeoData({
    required this.geoDataId,
    required this.categoryId,
    this.category,
    required this.location,
    required this.fields,
    required this.realtions,
  });

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
            composed: (_) => null);

        props[t.key] = {
          'type': t.value,
          'value': typedValue,
        };
      }
    }
    return props;
  }

  GeoData copyWith({
    String? geoDataId,
    String? categoryId,
    Category? category,
    LatLng? location,
    Map<String, Map>? fields,
    Map<String, GeoData>? realtions,
  }) {
    return GeoData(
      geoDataId: geoDataId ?? this.geoDataId,
      categoryId: categoryId ?? this.categoryId,
      category: category ?? this.category,
      location: location ?? this.location,
      fields: fields ?? this.fields,
      realtions: realtions ?? this.realtions,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GeoData &&
        other.geoDataId == geoDataId &&
        other.categoryId == categoryId &&
        other.category == category &&
        other.location == location &&
        mapEquals(other.fields, fields) &&
        mapEquals(other.realtions, realtions);
  }

  @override
  int get hashCode {
    return geoDataId.hashCode ^
        categoryId.hashCode ^
        category.hashCode ^
        location.hashCode ^
        fields.hashCode ^
        realtions.hashCode;
  }

  @override
  String toString() {
    return 'GeoData(geoDataId: $geoDataId, categoryId: $categoryId, category: $category, location: $location, fields: $fields, realtions: $realtions)';
  }
}
