import 'package:dartz/dartz.dart';

import 'package:geobase/src/domain/entities/entities.dart';

abstract class ICategoryService {
  Future<Either<Failure, List<CategoryGetEntity>>> loadCategoriesWhere([
    FilterCategoriesOptions? filters,
  ]);

  Future<Either<Failure, CategoryGetEntity>> getCategory(int categoryId);

  //CRUD operations

  Future<Either<Failure, CategoryGetEntity>> createCategory(
    CategoryPostEntity newCategory,
  );

  // Future<Either<Failure, CategoryEntity>> editCategory(
  //   CategoryEntity newCategory,
  // );

  //TODO: DEFINE WHEN THIS ACTION IS POSSIBLE WITHOUT REMOVE ALL ROWS OF GEODATA
  Future<Either<Failure, Unit>> removeCategory(int categoryId);
}
