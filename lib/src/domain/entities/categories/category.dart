import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geobase/src/domain/core/enums/enums.dart';

part 'category.freezed.dart';

@freezed
class CategoryEntity with _$CategoryEntity {
  const factory CategoryEntity.get({
    required int id,
    required String name,
    Color? color,
    // "name": FieldType
    required Map<String, FieldTypeEnum> fields,
    // "name": "CategoryId"
    required Map<String, CategoryEntity> relations,
    //TODO: especified this category entity relations to avoid cycles
  }) = CategoryGetEntity;

  const factory CategoryEntity.post({
    required String name,
    Color? color,
    // "name": FieldType
    required Map<String, FieldTypeEnum> fields,
    // "name": "CategoryId"
    required Map<String, int> relations,
  }) = CategoryPostEntity;
}
