import 'package:geobase/injection.dart';
import 'package:geobase/src/infrastructure/models/models.dart';
import 'package:geobase/src/infrastructure/providers/interfaces/i_columns_provider.dart';
import 'package:geobase/src/infrastructure/providers/interfaces/i_field_type_provider.dart';
import 'package:geobase/src/infrastructure/providers/sqlite/db_model.dart';

@Singleton(as: IColumnsProvider)
class ColumnsSQLiteProvider extends IColumnsProvider {
  @override
  Future<int> create(ColumnPostModel model) async {
    return await ColumnDBModel.withFields(
          model.name,
          model.categoryId,
          model.typeId,
        ).save() ??
        -1;
  }

  @override
  Future<int> edit(ColumnPutModel model) async {
    return await ColumnDBModel.withFields(
          // model.id,
          model.name,
          model.categoryId,
          model.typeId,
        ).save() ??
        -1;
  }

  @override
  Future<List<ColumnGetModel>> getAllFromCategory(int categoryId) async {
    final columns = await ColumnDBModel()
        .select()
        .category_id
        .equals(categoryId)
        .toList(preload: true);
    final result = <ColumnGetModel>[];
    for (final e in columns) {
      result.add(
        ColumnGetModel(
          id: e.column_id!,
          categoryId: e.category_id!,
          name: e.name!,
          type: await getIt<IFieldTypeProvider>().getById(e.field_type_id!),
        ),
      );
    }
    return result;
  }

  @override
  Future<ColumnGetModel> getById(int id) async {
    final column = await ColumnDBModel()
        .select()
        .column_id
        .equals(id)
        .toSingle(preload: true);
    return ColumnGetModel(
      id: id,
      categoryId: column!.category_id!,
      name: column.name!,
      type: await getIt<IFieldTypeProvider>().getById(column.field_type_id!),
    );
  }

  @override
  Future<void> remove(int id) async {
    final result = await ColumnDBModel().select().column_id.equals(id).delete();
    if (result.errorMessage?.isNotEmpty ?? false) {
      throw Exception(result.errorMessage);
    }
  }
}
