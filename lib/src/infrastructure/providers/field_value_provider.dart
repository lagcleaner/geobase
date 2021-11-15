import 'dart:convert';

import 'package:geobase/injection.dart';
import 'package:geobase/src/infrastructure/models/models.dart';
import 'package:geobase/src/infrastructure/providers/interfaces/interfaces.dart';
import 'package:geobase/src/infrastructure/providers/sqlite/db_model.dart';

@LazySingleton(as: IFieldValueProvider)
class FieldValueSQLiteProvider implements IFieldValueProvider {
  @override
  Future<int> create(FieldValuePostModel model) async {
    final id = await FieldValueDBModel.withFields(
      encodeValue(model.value),
      model.geodataId,
      model.columnId,
    ).save();
    return id!;
  }

  @override
  Future<int> edit(FieldValuePutModel model) async {
    await FieldValueDBModel.withId(
      model.id,
      encodeValue(model.value),
      model.geodataId,
      model.columnId,
    ).save();
    return model.id;
  }

  @override
  Future<List<FieldValueGetModel>> getAllFromGeodata(int geodataId) async {
    final fields = await FieldValueDBModel()
        .select()
        .geodata_id
        .equals(geodataId)
        .toList();
    final result = <FieldValueGetModel>[];
    for (final field in fields) {
      result.add(
        FieldValueGetModel(
          value: decodeValue(field.value),
          id: field.field_value_id!,
          geodataId: geodataId,
          column: await getIt<IColumnsProvider>().getById(field.column_id!),
        ),
      );
    }
    return result;
  }

  @override
  Future<FieldValueGetModel> getById(int id) async {
    final field =
        await FieldValueDBModel().select().field_value_id.equals(id).toSingle();
    if (field == null) throw Exception('FieldValue Not Found');
    return FieldValueGetModel(
      value: decodeValue(field.value),
      id: field.field_value_id!,
      geodataId: field.geodata_id!,
      column: await getIt<IColumnsProvider>().getById(field.column_id!),
    );
  }

  @override
  Future<void> remove(int id) async {
    final result =
        await FieldValueDBModel().select().field_value_id.equals(id).delete();
    if (result.errorMessage?.isNotEmpty ?? false) {
      throw Exception(result.errorMessage);
    }
  }

  dynamic decodeValue(String? valueStr) =>
      valueStr != null ? json.decode(valueStr)['value'] : null;
  String encodeValue(dynamic value) => json.encode({'value': value});
}
