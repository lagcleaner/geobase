import 'package:dartz/dartz.dart';

import 'package:geobase/src/domain/entities/entities.dart';

abstract class ICategoryService {
  Future<Either<Failure, List<CategoryEntity>>> loadAllCategories();

  Future<Either<Failure, CategoryEntity>> getCategory(int categoryId);

  /// According to the current filters.
  Future<Either<Failure, List<CategoryEntity>>> loadCategoriesWhere([
    FilterCategoriesOptions? filters,
  ]);

  //CRUD operations

  Future<Either<Failure, CategoryEntity>> createCategory(
      CategoryEntity newCategory);

  //TODO: DEFINE WHEN THIS ACTION IS POSSIBLE WITHOUT REMOVE ALL ROWS OF GEODATA
  Future<Either<Failure, CategoryEntity>> editCategory(
      CategoryEntity newCategory);

  //TODO: SAME AS ABOVE
  Future<Either<Failure, Unit>> removeCategory(int categoryId);
}
