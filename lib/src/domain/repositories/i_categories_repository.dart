import 'package:dartz/dartz.dart';

import 'package:geobase/src/domain/entities/entities.dart';

abstract class ICategoriesRepository {
  Future<Either<Failure, List<CategoryGetEntity>>> loadCategoriesWhere([
    FilterCategoriesOptionsEntity? filters,
  ]);

  Future<Either<Failure, CategoryGetEntity>> getCategory(int categoryId);

  Future<Either<Failure, int>> addCategory(
    CategoryPostEntity newCategory,
  );

  Future<Either<Failure, int>> editCategory(
    CategoryPutEntity newCategory,
  );

  Future<Either<Failure, Unit>> removeCategory(int categoryId);
}
