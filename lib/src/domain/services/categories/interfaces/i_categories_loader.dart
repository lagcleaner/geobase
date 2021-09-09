import 'package:dartz/dartz.dart';

import '../../../entities/entities.dart';

abstract class ICategoriesLoaderService {
  Future<Either<Failure, List<Category>>> loadAllCategories();

  Future<Either<Failure, Category>> getCategory(int categoryId);

  /// According to the current filters.
  Future<Either<Failure, List<Category>>> loadCategoriesWhere();
}
