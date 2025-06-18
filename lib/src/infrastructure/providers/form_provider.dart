import 'dart:convert';
import 'dart:developer';

import 'package:geobase/injection.dart';
import 'package:geobase/src/infrastructure/models/models.dart';
import 'package:geobase/src/infrastructure/providers/providers.dart';

@LazySingleton(as: IFieldTypeFormProvider)
class FormSQLiteProvider implements IFieldTypeFormProvider {
  @override
  Future<int> create(FieldTypeFormPostModel model) async {
    final fieldTypeId = await FieldTypeDBModel.withFields(
      model.name,
      model.metaType,
      model.renderClass ?? FORM_RENDER_CLASS,
    ).save();
    if (fieldTypeId == null) throw Exception('Create FieldType Form Denied');
    try {
      final id = await FormDBModel.withFields(
        model.name,
        fieldTypeId,
      ).save();
      if (id == null) throw Exception('Create Form Denied');
      for (final col in model.columns) {
        await getIt<IColumnsProvider>().create(
          ColumnPostModel(
            name: col.name,
            typeId: col.typeId,
            formId: fieldTypeId,
          ),
        );
      }

      return fieldTypeId;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<FieldTypeFormGetModel>> getAll() async {
    final formdb = await FormDBModel().select().toList();
    final result = <FieldTypeFormGetModel>[];
    for (final form in formdb) {
      final fieldType = await form.getFieldTypeDBModel();
      result.add(
        FieldTypeFormGetModel(
          name: fieldType!.name!,
          metaType: fieldType.meta_type!,
          id: form.field_type_id!,
          renderClass: fieldType.render_class!,
          columns: await getIt<IColumnsProvider>()
              .getAllFromForm(form.field_type_id!),
        ),
      );
    }

    return result;
  }

  @override
  Future<FieldTypeFormGetModel> getByFieldTypeId(int id) async {
    final form = await FormDBModel()
        .select()
        .field_type_id
        .equals(id)
        .toSingle(preload: true);
    if (form == null) throw Exception('Form Not Found');
    return FieldTypeFormGetModel(
      id: form.field_type_id!,
      name: form.name!,
      metaType: form.plFieldTypeDBModel!.meta_type!,
      renderClass: form.plFieldTypeDBModel!.render_class!,
      columns: await getIt<IColumnsProvider>()
          .getAllFromForm(form.field_type_id!),
    );
  }

  @override
  Future<void> remove(int id) async {
    final result = await FormDBModel()
      .select()
      .field_type_id
      .equals(id)
      .delete();
    if (result.errorMessage?.isNotEmpty ?? false) {
      throw Exception(result.errorMessage);
    }
    final result1 =
        await FieldTypeDBModel().select().field_type_id.equals(id).delete();
    if (result1.errorMessage?.isNotEmpty ?? false) {
      throw Exception(result.errorMessage);
    }
  }
}
