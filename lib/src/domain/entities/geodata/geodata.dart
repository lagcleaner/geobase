import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart' hide Category;
import 'package:latlong2/latlong.dart';

import '../entities.dart';

class GeoData implements IMarkable {
  final String geoDataId;

  final String categoryId;

  final Category? category;

  final LatLng location;

  /// 'field_name': (FieldType(), value)
  final Map<String, Tuple2<FieldType, dynamic>> fields;

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

  GeoData copyWith({
    String? geoDataId,
    String? categoryId,
    Category? category,
    LatLng? location,
    Map<String, Tuple2<FieldType, dynamic>>? fields,
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
