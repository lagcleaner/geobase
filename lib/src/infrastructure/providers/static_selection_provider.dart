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
    final fieldTypeId = await FieldTypeDBModel.withFields(
      model.name,
      model.metaType,
      model.renderClass ?? STATICSELECTION_RENDER_CLASS,
    ).save();
    if (fieldTypeId == null) throw Exception('Create StaticSelection Denied');
    try {
      final id = await StaticSelectionDBModel.withFields(
        json.encode(model.options),
        fieldTypeId,
      ).save();
      if (id == null) throw Exception('Create StaticSelection Denied');
      return id;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<FieldTypeStaticSelectionGetModel>> getAll() async {
    final staticSelectiondb = await StaticSelectionDBModel().select().toList();
    final result = <FieldTypeStaticSelectionGetModel>[];
    for (final ss in staticSelectiondb) {
      final fieldType = await ss.getFieldTypeDBModel();
      result.add(
        FieldTypeStaticSelectionGetModel(
          name: fieldType!.name!,
          metaType: fieldType.meta_type!,
          fieldTypeId: ss.field_type_id!,
          renderClass: fieldType.render_class!,
          options: (json.decode(ss.options!) as List?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
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
    if (ss == null) throw Exception('StaticSelection Not Found');
    return FieldTypeStaticSelectionGetModel(
      name: ss.plFieldTypeDBModel!.name!,
      metaType: ss.plFieldTypeDBModel!.meta_type!,
      fieldTypeId: ss.field_type_id!,
      renderClass: ss.plFieldTypeDBModel!.render_class!,
      options: (json.decode(ss.options!) as List?)
              ?.map((e) => e as String)
              .toList() ??
          [],
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
    final result1 =
        await FieldTypeDBModel().select().field_type_id.equals(id).delete();
    if (result.errorMessage?.isNotEmpty ?? false) {
      throw Exception(result.errorMessage);
    }
  }
}
