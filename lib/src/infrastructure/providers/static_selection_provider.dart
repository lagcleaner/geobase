import 'dart:convert';

import 'package:geobase/injection.dart';
import 'package:geobase/src/infrastructure/models/models.dart';
import 'package:geobase/src/infrastructure/providers/interfaces/i_static_selection_provider.dart';
import 'package:geobase/src/infrastructure/providers/sqlite/db_model.dart';

@LazySingleton(as: IFieldTypeStaticSelectionProvider)
class StaticSelectionSQLiteProvider
    implements IFieldTypeStaticSelectionProvider {
  @override
  Future<int> create(FieldTypeStaticSelectionPostModel model) async {
    await GeobaseModel().batchStart();
    final fieldTypeId =
        await FieldTypeDBModel.withFields(model.name, model.metaType).save();
    try {
      final id = (await StaticSelectionDBModel.withFields(
        json.encode(model.options),
        fieldTypeId,
      ).save())!;
      await GeobaseModel().batchCommit();
      return id;
    } catch (e) {
      GeobaseModel().batchRollback();
      rethrow;
    }
  }

  @override
  Future<List<FieldTypeStaticSelectionGetModel>> getAll() async {
    //TODO: Use view_...
    final staticSelectiondb = await StaticSelectionDBModel().select().toList();
    final result = <FieldTypeStaticSelectionGetModel>[];
    for (final ss in staticSelectiondb) {
      final fieldType = await ss.getFieldTypeDBModel();
      result.add(
        FieldTypeStaticSelectionGetModel(
          name: fieldType!.name!,
          metaType: fieldType.meta_type!,
          fieldTypeId: ss.field_type_id!,
          options: json.decode(ss.options!) as List<String>,
        ),
      );
    }
    return result;
  }

  @override
  Future<FieldTypeStaticSelectionGetModel> getByFieldTypeId(int id) async {
    final ss = await StaticSelectionDBModel()
        .select()
        .field_type_id
        .equals(id)
        .toSingle(preload: true);
    return FieldTypeStaticSelectionGetModel(
      name: ss!.plFieldTypeDBModel!.name!,
      metaType: ss.plFieldTypeDBModel!.meta_type!,
      fieldTypeId: ss.field_type_id!,
      options: json.decode(ss.options!) as List<String>,
    );
  }

  @override
  Future<void> remove(int id) async {
    final result = await StaticSelectionDBModel()
        .select()
        .field_type_id
        .equals(id)
        .delete();
    if (result.errorMessage?.isNotEmpty ?? false) {
      throw Exception(result.errorMessage);
    }
  }
}
