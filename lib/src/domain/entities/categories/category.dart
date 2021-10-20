import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geobase/src/domain/core/enums/enums.dart';

part 'category.freezed.dart';

@freezed
class CategoryEntity with _$CategoryEntity {
  ///Only to be contained in relations
  const factory CategoryEntity.minimal({
    required int id,
    required String name,
  }) = CategoryMinimalEntity;

  const factory CategoryEntity.get({
    required int id,
    required String name,
    Color? color,
    // "name": FieldType
    required Map<String, FieldTypeEnum> fields,
    // "name": "CategoryId"
    required Map<String, CategoryMinimalEntity> relations,
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
