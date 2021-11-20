import 'dart:convert';

import 'package:geobase/src/infrastructure/providers/sqlite/db_model.dart';

//base types
const _baseTypeNames = [
  'Bool',
  'Int',
  'Double',
  'String',
  'Date',
  'DateTime',
];

const _nameKey = 'name';
const _renderClassKey = 'render_class';
const _extensionKey = 'extensions';

const _mediaTypesInitialRows = [
  {
    _nameKey: 'image',
    _extensionKey: ['jpg', 'jpeg', 'png'],
    _renderClassKey: '${MEDIA_METATYPE_NAME}ImageFieldRender',
  },
  {
    _nameKey: 'audio',
    _extensionKey: ['mp3', 'm3a'],
    _renderClassKey: '${MEDIA_METATYPE_NAME}AudioUIRender',
  },
  {
    _nameKey: 'file',
    _extensionKey: ['*'],
    _renderClassKey: '${MEDIA_METATYPE_NAME}FileUIRender',
  },
];

extension GeobaseModelDatabaseExtension on GeobaseModel {
  Future<void> initialize() async {
    await populateDB();
  }

  Future<void> populateDB() async {
    await batchStart();
    try {
      // test if is already initialized
      final entries = await FieldTypeDBModel().select().toCount();
      if (entries > 0) return;

      // insert base types
      for (final name in _baseTypeNames) {
        final result = await FieldTypeDBModel.withFields(
          name,
          BASE_METATYPE_NAME,
          '${name}UIRender',
        ).save();
        if (result == null) {
          throw Exception('Invalid Insert Database Action At init.');
        }
      }

      // insert media types
      for (final row in _mediaTypesInitialRows) {
        final result = await FieldTypeDBModel.withFields(
          row[_nameKey] as String?,
          MEDIA_METATYPE_NAME,
          row[_renderClassKey] as String?,
        ).save();
        if (result == null) {
          throw Exception('Invalid Insert Database Action At init.');
        }
        final result2 = await MediaDBModel.withFields(
          json.encode(row[_extensionKey] as List<String>?),
          result,
        ).save();
        if (result2 == null) {
          throw Exception('Invalid Insert Database Action At init.');
        }
      }
      await batchCommit();
    } catch (e) {
      batchRollback();
      rethrow;
    }
  }
}
