import 'dart:convert';
// import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;
import 'package:sqfentity/sqfentity.dart';
import 'package:sqfentity_gen/sqfentity_gen.dart';

part 'db_model.g.dart';

const String CATEGORY_TABLE_NAME = 'Category';
const String GEODATA_TABLE_NAME = 'Geodata';
const String FIELDTYPE_TABLE_NAME = 'FieldType';
const String STATICSELECTION_TABLE_NAME = 'StaticSelection';
const String MEDIA_TABLE_NAME = 'Media';
const String COLUMN_TABLE_NAME = 'Column';
const String FIELDVALUE_TABLE_NAME = 'FieldValue';

// meta type names for FieldType
const STATICSELECTION_METATYPE_NAME = STATICSELECTION_TABLE_NAME;
const MEDIA_METATYPE_NAME = MEDIA_TABLE_NAME;
const BASE_METATYPE_NAME = 'Base';

// default render class name for meta_types
const DEFAULT_RENDER_CLASS_NAME_SUFFIX = 'FieldRender';
const STATICSELECTION_RENDER_CLASS =
    '$STATICSELECTION_METATYPE_NAME$DEFAULT_RENDER_CLASS_NAME_SUFFIX';
const MEDIA_RENDER_CLASS =
    '$MEDIA_METATYPE_NAME$DEFAULT_RENDER_CLASS_NAME_SUFFIX';

const tableCategory = SqfEntityTable(
  tableName: CATEGORY_TABLE_NAME,
  modelName: 'CategoryDBModel',
  primaryKeyName: 'category_id',
  primaryKeyType: PrimaryKeyType.integer_auto_incremental,
  fields: [
    SqfEntityField('name', DbType.text, isUnique: true, isNotNull: true),
    SqfEntityField('description', DbType.text),
    SqfEntityField('color', DbType.integer), // 32bit integer (ARGB)
    SqfEntityField('icon', DbType.text, isNotNull: true), // icon name
  ],
);

const tableGeodata = SqfEntityTable(
  tableName: GEODATA_TABLE_NAME,
  modelName: 'GeodataDBModel',
  primaryKeyName: 'geodata_id',
  primaryKeyType: PrimaryKeyType.integer_auto_incremental,
  fields: [
    SqfEntityField('longitude', DbType.real, isNotNull: true),
    SqfEntityField('latitude', DbType.real, isNotNull: true),
    SqfEntityFieldRelationship(
      parentTable: tableCategory,
      fieldName: 'category_id',
      isNotNull: true,
      deleteRule: DeleteRule.CASCADE,
    ),
  ],
);

const tableFieldType = SqfEntityTable(
  tableName: FIELDTYPE_TABLE_NAME,
  modelName: 'FieldTypeDBModel',
  primaryKeyName: 'field_type_id',
  primaryKeyType: PrimaryKeyType.integer_auto_incremental,
  fields: [
    SqfEntityField('name', DbType.text, isUnique: true, isNotNull: true),
    SqfEntityField('meta_type', DbType.text, isNotNull: true),
    SqfEntityField('render_class', DbType.text, isNotNull: true),
  ],
);

const tableStaticSelection = SqfEntityTable(
  tableName: STATICSELECTION_TABLE_NAME,
  modelName: 'StaticSelectionDBModel',
  primaryKeyName: 'static_selection_id',
  primaryKeyType: PrimaryKeyType.integer_auto_incremental,
  fields: [
    // json serialized list of Strings
    SqfEntityField('options', DbType.text, isNotNull: true),
    SqfEntityFieldRelationship(
      parentTable: tableFieldType,
      fieldName: 'field_type_id',
      isNotNull: true,
      deleteRule: DeleteRule.CASCADE,
    ),
  ],
);

const tableMedia = SqfEntityTable(
  tableName: MEDIA_TABLE_NAME,
  modelName: 'MediaDBModel',
  primaryKeyName: 'media_id',
  primaryKeyType: PrimaryKeyType.integer_auto_incremental,
  fields: [
    // json serialized list of Strings
    SqfEntityField('extensions', DbType.text, isNotNull: true),
    SqfEntityFieldRelationship(
      parentTable: tableFieldType,
      fieldName: 'field_type_id',
      isNotNull: true,
      deleteRule: DeleteRule.CASCADE,
    ),
  ],
);

const tableColumn = SqfEntityTable(
  tableName: COLUMN_TABLE_NAME,
  modelName: 'ColumnDBModel',
  primaryKeyName: 'column_id',
  primaryKeyType: PrimaryKeyType.integer_auto_incremental,
  fields: [
    SqfEntityField('name', DbType.text),
    SqfEntityFieldRelationship(
      parentTable: tableCategory,
      fieldName: 'category_id',
      isNotNull: true,
      deleteRule: DeleteRule.CASCADE,
    ),
    SqfEntityFieldRelationship(
      parentTable: tableFieldType,
      fieldName: 'field_type_id',
      isNotNull: true,
      deleteRule: DeleteRule.CASCADE,
    ),
  ],
);

const tableFieldValue = SqfEntityTable(
  tableName: FIELDVALUE_TABLE_NAME,
  modelName: 'FieldValueDBModel',
  primaryKeyName: 'field_value_id',
  primaryKeyType: PrimaryKeyType.integer_auto_incremental,
  fields: [
    // json serialized value => '{"value": <value>}'
    SqfEntityField('value', DbType.text, isNotNull: true),
    SqfEntityFieldRelationship(
      parentTable: tableGeodata,
      fieldName: 'geodata_id',
      isNotNull: true,
      deleteRule: DeleteRule.CASCADE,
    ),
    SqfEntityFieldRelationship(
      parentTable: tableColumn,
      fieldName: 'column_id',
      isNotNull: true,
      deleteRule: DeleteRule.CASCADE,
    ),
  ],
);

@SqfEntityBuilder(geobaseDBModel)
const geobaseDBModel = SqfEntityModel(
  modelName: 'GeobaseModel',
  databaseName: 'GeobaseORM.db',
  databaseTables: [
    tableCategory,
    tableGeodata,
    tableColumn,
    tableFieldType,
    tableStaticSelection,
    tableMedia,
    tableFieldValue,
  ],
  dbVersion: 1,
);
