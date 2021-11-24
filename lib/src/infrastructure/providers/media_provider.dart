import 'dart:convert';

import 'package:geobase/injection.dart';
import 'package:geobase/src/infrastructure/models/models.dart';
import 'package:geobase/src/infrastructure/providers/interfaces/i_media_provider.dart';
import 'package:geobase/src/infrastructure/providers/sqlite/db_model.dart';

@LazySingleton(as: IFieldTypeMediaProvider)
class MediaSQLiteProvider implements IFieldTypeMediaProvider {
  @override
  Future<int> create(FieldTypeMediaPostModel model) async {
    final fieldTypeId = await FieldTypeDBModel.withFields(
      model.name,
      model.metaType,
      model.renderClass ?? MEDIA_RENDER_CLASS,
    ).save();
    if (fieldTypeId == null) throw Exception('Create Media Denied');
    try {
      final id = await MediaDBModel.withFields(
        json.encode(model.extensions),
        fieldTypeId,
      ).save();
      if (id == null) throw Exception('Create Media Denied');
      return id;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<FieldTypeMediaGetModel>> getAll() async {
    final mediadb = await MediaDBModel().select().toList();
    final result = <FieldTypeMediaGetModel>[];
    for (final media in mediadb) {
      final fieldType = await media.getFieldTypeDBModel();
      result.add(
        FieldTypeMediaGetModel(
          name: fieldType!.name!,
          metaType: fieldType.meta_type!,
          fieldTypeId: media.field_type_id!,
          renderClass: fieldType.render_class!,
          extensions: (json.decode(media.extensions!) as List?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
        ),
      );
    }
    return result;
  }

  @override
  Future<FieldTypeMediaGetModel> getByFieldTypeId(int id) async {
    final media = await MediaDBModel()
        .select()
        .field_type_id
        .equals(id)
        .toSingle(preload: true);
    if (media == null) throw Exception('Media Not Found');
    return FieldTypeMediaGetModel(
      name: media.plFieldTypeDBModel!.name!,
      metaType: media.plFieldTypeDBModel!.meta_type!,
      fieldTypeId: media.field_type_id!,
      renderClass: media.plFieldTypeDBModel!.render_class!,
      extensions: (json.decode(media.extensions!) as List?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );
  }

  @override
  Future<void> remove(int id) async {
    final result =
        await MediaDBModel().select().field_type_id.equals(id).delete();
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
