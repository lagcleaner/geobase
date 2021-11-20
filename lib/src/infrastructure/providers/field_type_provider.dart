import 'package:geobase/injection.dart';
import 'package:geobase/src/infrastructure/models/models.dart';
import 'package:geobase/src/infrastructure/providers/interfaces/i_field_type_provider.dart';
import 'package:geobase/src/infrastructure/providers/sqlite/db_model.dart';

@LazySingleton(as: IFieldTypeProvider)
class FieldTypeSQLiteProvider implements IFieldTypeProvider {
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
    if (type.meta_type == BASE_METATYPE_NAME) {
      return FieldTypeGetModel(
        id: type.field_type_id!,
        name: type.name!,
        renderClass: type.render_class!,
        metaType: BASE_METATYPE_NAME,
      );
    }

    List<Map<String, dynamic>?>? result = await GeobaseModel().execDataTable(
      '''
    SELECT
      *
    FROM
      ${type.meta_type}
    INNER JOIN FieldType ON FieldType.field_type_id = ${type.meta_type}.field_type_id''',
    ) as List<Map<String, dynamic>?>?;

    if ((result?.isEmpty ?? true) || result!.first == null) {
      throw Exception('Type Definition Incomplete');
    }

    return FieldTypeGetModel(
      id: type.field_type_id!,
      name: type.name!,
      metaType: type.meta_type!,
      renderClass: type.render_class!,
      extradata: result.first,
    );
  }
}
