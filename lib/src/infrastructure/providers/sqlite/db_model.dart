import 'package:sqfentity/sqfentity.dart';
import 'package:sqfentity_gen/sqfentity_gen.dart';

part 'db_model.g.dart';

const String CategoryTableName = 'Category';
const String GeodataTableName = 'Geodata';
const String FieldTypeTableName = 'FieldType';
const String StaticSelectionTableName = 'StaticSelection';
const String ColumnTableName = 'Column';
const String FieldValueTableName = 'FieldValue';

//meta type names for FieldType
const StaticSelectionMetaTypeName = StaticSelectionTableName;
const BaseMetaTypeName = 'Base';

const tableCategory = SqfEntityTable(
  tableName: CategoryTableName,
  modelName: 'CategoryDBModel',
  primaryKeyName: 'category_id',
  primaryKeyType: PrimaryKeyType.integer_auto_incremental,
  fields: [
    SqfEntityField('name', DbType.text, isUnique: true, isNotNull: true),
    SqfEntityField('description', DbType.text),
    SqfEntityField('color', DbType.integer), // 32bit integer (ARGB)
    SqfEntityField('icon', DbType.integer), // char unicode
  ],
);

const tableGeodata = SqfEntityTable(
  tableName: GeodataTableName,
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
  tableName: FieldTypeTableName,
  modelName: 'FieldTypeDBModel',
  primaryKeyName: 'field_type_id',
  primaryKeyType: PrimaryKeyType.integer_auto_incremental,
  fields: [
    SqfEntityField('name', DbType.text, isUnique: true, isNotNull: true),
    SqfEntityField('meta_type', DbType.text, isUnique: true, isNotNull: true),
  ],
);

const tableStaticSelection = SqfEntityTable(
  tableName: StaticSelectionTableName,
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

const VIEW_FTStaticSelections = SqfEntityTable(
  tableName: 'VStaticSelections',
  objectType: ObjectType.view,
  fields: [
    SqfEntityField('name', DbType.text, isUnique: true, isNotNull: true),
    SqfEntityField('meta_type', DbType.text, isUnique: true, isNotNull: true),
    SqfEntityField('options', DbType.text, isNotNull: true),
    SqfEntityFieldRelationship(
      parentTable: tableFieldType,
      fieldName: 'field_type_id',
      isNotNull: true,
      deleteRule: DeleteRule.NO_ACTION,
    ),
    SqfEntityFieldRelationship(
      parentTable: tableStaticSelection,
      isNotNull: true,
      deleteRule: DeleteRule.NO_ACTION,
      fieldName: 'static_selection_id',
      isPrimaryKeyField: false,
    ),
  ],
  sqlStatement: '''
    SELECT
    static_selection_id,
    field_type_id,
    FieldType.name AS name,
    FieldType.meta_type AS meta_type,
    StaticSelection.options AS options
  FROM
    StaticSelection
  INNER JOIN FieldType ON FieldType.field_type_id = StaticSelection.field_type_id''',
);

const tableColumn = SqfEntityTable(
  tableName: ColumnTableName,
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
  tableName: FieldValueTableName,
  modelName: 'FieldValueDBModel',
  primaryKeyName: 'field_value_id',
  primaryKeyType: PrimaryKeyType.integer_auto_incremental,
  fields: [
    SqfEntityField('value', DbType.text), // json serialized value
    SqfEntityFieldRelationship(
      parentTable: tableGeodata,
      fieldName: 'geodata_id',
      isNotNull: true,
      deleteRule: DeleteRule.CASCADE,
    ),
    SqfEntityFieldRelationship(
      parentTable: tableFieldType,
      fieldName: 'column_id',
      isNotNull: true,
      deleteRule: DeleteRule.CASCADE,
    ),
  ],
);

const VIEW_Markers = SqfEntityTable(
  tableName: 'VMarkers',
  objectType: ObjectType.view,
  fields: [
    SqfEntityField('kind', DbType.text, isNotNull: true),
    SqfEntityField('icon', DbType.integer),
    SqfEntityField('color', DbType.integer),
    SqfEntityFieldRelationship(
      parentTable: tableGeodata,
      isNotNull: true,
      deleteRule: DeleteRule.NO_ACTION,
      fieldName: 'geodata_id',
      isPrimaryKeyField: false,
    ),
  ],
  sqlStatement: '''
    SELECT
    geodata_id,
    Category.name AS kind,
    Category.icon AS icon,
    Category.color AS color
  FROM
    Geodata
  INNER JOIN Category ON Category.category_id = Geodata.category_id''',
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
    tableFieldValue,
    VIEW_Markers,
    VIEW_FTStaticSelections,
  ],
  dbVersion: 1,
);
