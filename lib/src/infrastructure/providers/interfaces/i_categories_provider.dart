import 'package:geobase/src/infrastructure/models/models.dart';

abstract class ICategoriesProvider {
  Future<List<CategoryGetModel>> getAll();
  Future<CategoryGetModel> getById(int id);
  Future<int> create(CategoryPostModel model);
  Future<int> edit(CategoryPutModel model);
  Future<void> remove(int id);
}
