import 'dart:developer';

import 'package:geobase/injection.dart';
import 'package:geobase/src/infrastructure/models/models.dart';
import 'package:geobase/src/infrastructure/providers/interfaces/interfaces.dart';
import 'package:geobase/src/infrastructure/providers/providers.dart';
import 'package:geobase/src/infrastructure/providers/sqlite/db_model.dart';

@LazySingleton(as: ICategoriesProvider)
class CategoriesSQLiteProvider implements ICategoriesProvider {
  @override
  Future<int> create(CategoryPostModel model) async {
    try {
      final categoryId = await CategoryDBModel.withFields(
        model.name,
        model.description,
        model.color,
        model.icon,
      ).save();
      if (categoryId == null) throw Exception('Create Category Denied');
      for (final col in model.columns) {
        await getIt<IColumnsProvider>().create(
          ColumnPostModel(
            name: col.name,
            typeId: col.typeId,
            categoryId: categoryId,
          ),
        );
      }
      return categoryId;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<int> edit(CategoryPutModel model) async {
    try {
      final categoryId = await CategoryDBModel.withId(
        model.id,
        model.name,
        model.description,
        model.color,
        model.icon,
      ).save();
      if (categoryId == null) throw Exception('Edit Category Denied');
      for (final col in model.columns) {
        await getIt<IColumnsProvider>().edit(col);
      }
      return categoryId;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CategoryGetModel>> getAll() async {
    final categories = await CategoryDBModel().select().toList();
    final result = <CategoryGetModel>[];
    for (final cat in categories) {
      result.add(
        CategoryGetModel(
          id: cat.category_id!,
          name: cat.name!,
          description: cat.description,
          color: cat.color,
          icon: cat.icon!,
          columns: await getIt<IColumnsProvider>()
              .getAllFromCategory(cat.category_id!),
        ),
      );
    }
    return result;
  }

  @override
  Future<CategoryGetModel> getById(int id) async {
    final category =
        await CategoryDBModel().select().category_id.equals(id).toSingle();
    if (category == null) throw Exception('Category Not Found');
    return CategoryGetModel(
      id: category.category_id!,
      name: category.name!,
      description: category.description,
      icon: category.icon!,
      color: category.color,
      columns: await getIt<IColumnsProvider>()
          .getAllFromCategory(category.category_id!),
    );
  }

  @override
  Future<void> remove(int id) async {
    final result =
        await CategoryDBModel().select().category_id.equals(id).delete();
    if (result.errorMessage?.isNotEmpty ?? false) {
      throw Exception(result.errorMessage);
    }
  }

  @override
  Future<List<CategoryGetModel>> getByNameSubstring(
    String nameSubstring,
  ) async {
    final categories = await CategoryDBModel()
        .select()
        .where("name LIKE '%$nameSubstring%'")
        //also: instr(column, 'cats') > 0
        .toList();
    final r = await ColumnDBModel().select().toList();
    log(r.toString());
    final result = <CategoryGetModel>[];
    for (final cat in categories) {
      result.add(
        CategoryGetModel(
          id: cat.category_id!,
          name: cat.name!,
          description: cat.description,
          color: cat.color,
          icon: cat.icon!,
          columns: await getIt<IColumnsProvider>()
              .getAllFromCategory(cat.category_id!),
        ),
      );
    }
    return result;
  }
}
