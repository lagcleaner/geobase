import 'dart:convert';

import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/core/enums/enums.dart';
import 'package:geobase/src/domain/core/extensions/enums_extensions.dart';
import 'package:geobase/src/infrastructure/models/models.dart';
import 'package:geobase/src/infrastructure/providers/interfaces/i_field_type_provider.dart';
import 'package:geobase/src/infrastructure/providers/sqlite/db_model.dart';

@Singleton(as: IFieldTypeProvider)
class FieldTypeSQLiteProvider extends IFieldTypeProvider {
  static bool _initialized = false;
  static Future initializeBaseFieldTypes() async {
    if (_initialized) return;
    await GeobaseModel().batchStart();
    try {
      for (final value in FieldTypeEnum.values) {
        await FieldTypeDBModel.withFields(value.name, BaseMetaTypeName).save();
      }
      await GeobaseModel().batchCommit();
    } catch (e) {
      GeobaseModel().batchRollback();
      rethrow;
    }
    _initialized = true;
  }

  @override
  Future<List<FieldTypeGetModel>> getAll() async {
    final fieldTypes = await FieldTypeDBModel().select().toList(preload: true);
    final result = <FieldTypeGetModel>[];
    for (final ft in fieldTypes) {
      result.add(await buildFieldTypeFromDBModel(ft));
    }
    return result;
  }

  @override
  Future<FieldTypeGetModel> getById(int id) async {
    final fieldType = await FieldTypeDBModel()
        .select()
        .field_type_id
        .equals(id)
        .toSingle(preload: true);
    return buildFieldTypeFromDBModel(fieldType!);
  }

  Future<FieldTypeGetModel> buildFieldTypeFromDBModel(
    FieldTypeDBModel type,
  ) async {
    switch (type.meta_type) {
      case StaticSelectionMetaTypeName:
        return type.getStaticSelectionDBModels()!.toSingle().then(
              (value) => FieldTypeStaticSelectionGetModel(
                fieldTypeId: type.field_type_id!,
                name: type.name!,
                metaType: type.meta_type!,
                options: json.decode(value!.options!) as List<String>,
              ),
            );
      case BaseMetaTypeName:
      default:
        return FieldTypeGetModel(
          id: type.field_type_id!,
          name: type.name!,
          metaType: BaseMetaTypeName,
        );
    }
  }
}
