import 'package:geobase/src/domain/core/enums/base_field_type_enum.dart';
import 'package:geobase/src/domain/core/extensions/enums_extensions.dart';
import 'package:geobase/src/infrastructure/providers/sqlite/db_model.dart';

extension GeobaseModelDatabaseExtension on GeobaseModel {
  Future<void> initialize() async {
    await populateDB();
  }

  Future<void> populateDB() async {
    await batchStart();
    try {
      for (final ft in FieldTypeEnum.values) {
        final result = await FieldTypeDBModel.withFields(
          ft.name,
          BaseMetaTypeName,
        ).save();
        if (result == null) {
          throw Exception('Invalid Insert/Update Database Action At init.');
        }
      }
      await batchCommit();
    } catch (e) {
      batchRollback();
      rethrow;
    }
  }
}
