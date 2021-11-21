import 'package:geobase/injection.dart';
import 'package:geobase/src/infrastructure/models/models.dart';
import 'package:geobase/src/infrastructure/providers/interfaces/interfaces.dart';
import 'package:geobase/src/infrastructure/providers/providers.dart';
import 'package:geobase/src/infrastructure/providers/sqlite/db_model.dart';

@LazySingleton(as: ICategoriesProvider)
class CategoriesSQLiteProvider implements ICategoriesProvider {
  @override
  Future<int> create(CategoryPostModel model) async {
    final id = await CategoryDBModel.withFields(
      model.name,
      model.description,
      model.color,
      model.materialIconCodePoint,
    ).save();
    return id!;
  }

  @override
  Future<int> edit(CategoryPutModel model) async {
    final id = await CategoryDBModel.withId(
      model.id,
      model.name,
      model.description,
      model.color,
      model.materialIconCodePoint,
    ).save();
    return id!;
  }

  @override
  Future<List<CategoryGetModel>> getAll() async {
    //TODO: use a view_table to get category get models with their columns.
    final categories = await CategoryDBModel().select().toList();
    final result = <CategoryGetModel>[];
    for (final cat in categories) {
      result.add(
        CategoryGetModel(
          id: cat.category_id!,
          name: cat.name!,
          description: cat.description!,
          color: cat.color,
          materialIconCodePoint: cat.icon!,
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
      materialIconCodePoint: category.icon!,
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
}
