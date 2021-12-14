import 'package:dartz/dartz.dart';

import 'package:geobase/src/domain/entities/entities.dart';

abstract class ICategoryService {
  Future<Either<Failure, List<CategoryGetEntity>>> loadCategoriesWhere([
    FilterCategoriesOptionsEntity? filters,
  ]);

  Future<Either<Failure, CategoryGetEntity>> getCategory(int categoryId);

  Future<Either<Failure, int>> createCategory(
    CategoryPostEntity newCategory,
  );

  Future<Either<Failure, bool>> hasRelatedData(int categoryId);

  Future<Either<Failure, int>> editCategory(
    CategoryPutEntity editedCategory,
  );

  Future<Either<Failure, Unit>> removeCategory(int categoryId);
}
