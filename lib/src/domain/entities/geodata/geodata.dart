import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/entities/geodata/field_value/field_value.dart';
import 'package:latlong2/latlong.dart';

part 'geodata.freezed.dart';

@freezed
class GeoDataEntity with _$GeoDataEntity {
  // const factory GeoDataEntity.get({
  //   required String geoDataId,
  //   required String categoryId,
  //   Color? color,
  //   required LatLng location,
  //   required Map<String, GeoDataEntity?> realtions,
  // }) = GeoDataGetEntity;
  @Implements(IMarkable)
  const factory GeoDataEntity.get({
    required int id,
    required CategoryEntity category,
    Color? color,
    required LatLng location,
    required Map<String, FieldValueEntity> fields,
    required Map<String, GeoDataEntity?> realtions,
  }) = GeoDataGetEntity;
  const factory GeoDataEntity.post({
    required int categoryId,
    required LatLng location,
    required Map<String, FieldValueEntity> fields,
    required Map<String, String?> realtions,
  }) = GeoDataPostEntity;
  const factory GeoDataEntity.put({
    required int id,
    required int categoryId,
    required LatLng location,
    required Map<String, FieldValueEntity> fields,
    required Map<String, String?> realtions,
  }) = GeoDataPutEntity;
}

// class Properties {
//   String name;
//   FieldType
//   FieldValueEntity value;
// }
