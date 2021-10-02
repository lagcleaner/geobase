import 'package:dartz/dartz.dart';

import 'package:geobase/src/domain/entities/entities.dart';

abstract class ICategoriesRepository {
  Future<Either<Failure, List<CategoryGetEntity>>> loadCategoriesWhere([
    FilterCategoriesOptions? filters,
  ]);

  Future<Either<Failure, CategoryGetEntity>> getCategory(int categoryId);

  Future<Either<Failure, CategoryGetEntity>> addCategory(
    CategoryPostEntity newCategory,
  );

  Future<Either<Failure, Unit>> removeCategory(int categoryId);
}
