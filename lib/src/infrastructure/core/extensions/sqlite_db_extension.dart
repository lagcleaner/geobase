import 'dart:developer';

import 'package:geobase/injection.dart';
import 'package:geobase/src/infrastructure/models/models.dart';
import 'package:geobase/src/infrastructure/providers/interfaces/interfaces.dart';
import 'package:geobase/src/infrastructure/providers/sqlite/db_model.dart';

//base types
const _baseTypeNames = [
  'Bool',
  'Int',
  'Double',
  'String',
  'Date',
  'DateTime',
  'QR',
];

const _nameKey = 'name';
const _renderClassKey = 'render_class';
const _extensionKey = 'extensions';

// especial medias
const _mediaTypesInitialRows = [
  {
    _nameKey: 'Image',
    _extensionKey: ['*'],
    _renderClassKey:
        '${MEDIA_METATYPE_NAME}Image$DEFAULT_RENDER_CLASS_NAME_SUFFIX',
  },
  {
    _nameKey: 'Audio',
    _extensionKey: ['*'],
    _renderClassKey:
        '${MEDIA_METATYPE_NAME}Audio$DEFAULT_RENDER_CLASS_NAME_SUFFIX',
  },
  {
    _nameKey: 'File',
    _extensionKey: ['*'],
    _renderClassKey:
        '${MEDIA_METATYPE_NAME}File$DEFAULT_RENDER_CLASS_NAME_SUFFIX',
  },
  {
    _nameKey: 'Video',
    _extensionKey: ['*'],
    _renderClassKey:
        '${MEDIA_METATYPE_NAME}Video$DEFAULT_RENDER_CLASS_NAME_SUFFIX',
  },
];

extension GeobaseModelDatabaseExtension on GeobaseModel {
  Future<void> initialize() async {
    await populateDB();
  }

  Future<void> populateDB() async {
    try {
      // test if is already initialized
      final entry = await FieldTypeDBModel().select().toSingle();
      if (entry != null) return;

      // insert base types
      for (final name in _baseTypeNames) {
        final result = await FieldTypeDBModel.withFields(
          name,
          BASE_METATYPE_NAME,
          '$BASE_METATYPE_NAME$name$DEFAULT_RENDER_CLASS_NAME_SUFFIX',
        ).save();
        if (result == null) {
          throw Exception('Invalid Insert Database Action At init.');
        }
      }

      // insert media types
      for (final row in _mediaTypesInitialRows) {
        try {
          await getIt<IFieldTypeMediaProvider>().create(
            FieldTypeMediaPostModel(
              name: (row[_nameKey] as String?)!,
              metaType: MEDIA_METATYPE_NAME,
              renderClass: row[_renderClassKey] as String?,
              extensions: (row[_extensionKey] as List?)
                      ?.map((e) => e as String)
                      .toList() ??
                  [],
            ),
          );
        } catch (e) {
          log(e.toString());
          throw Exception('Invalid Insert Database Action At init.');
        }
      }
    } catch (e) {
      rethrow;
    }
  }
}
