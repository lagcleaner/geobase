import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geobase/src/domain/entities/categories/field_types/field_type.dart';

part 'category.freezed.dart';

@freezed
class CategoryEntity with _$CategoryEntity {
  const factory CategoryEntity.get({
    required int id,
    required String name,
    Color? color,
    // "name": FieldType
    required Map<String, FieldType> fields,
    // "name": "CategoryId"
    required Map<String, CategoryEntity> relations,
    //TODO: especified this category entity relations to avoid cycles
  }) = CategoryGetEntity;

  const factory CategoryEntity.post({
    required String name,
    Color? color,
    // "name": FieldType
    required Map<String, FieldType> fields,
    // "name": "CategoryId"
    required Map<String, String> relations,
  }) = CategoryPostEntity;
}
