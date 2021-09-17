import 'package:dartz/dartz.dart';

import '../entities/entities.dart';

abstract class ICategoriesRepository {
  Future<Either<Failure, List<Category>>> loadAllCategories();

  Future<Either<Failure, Category>> getCategory(int categoryId);

  /// According to the current filters.
  Future<Either<Failure, List<Category>>> loadCategoriesWhere();

  Future<Either<Failure, Category>> addCategory(Category newCategory);

  Future<Either<Failure, Category>> updateCategory(Category newCategory);

  Future<Either<Failure, Unit>> removeCategory(int categoryId);
}
