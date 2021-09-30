import 'package:dartz/dartz.dart';

import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/services.dart';

@LazySingleton(as: ICategoryService)
class CategoriesService implements ICategoryService {
  @override
  Future<Either<Failure, CategoryEntity>> getCategory(int categoryId) {
    // TODO: implement getCategory
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<CategoryEntity>>> loadAllCategories() {
    // TODO: implement loadCategories
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, CategoryEntity>> createCategory(
      CategoryEntity newCategory) {
    // TODO: implement createCategory
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, CategoryEntity>> editCategory(
      CategoryEntity newCategory) {
    // TODO: implement editCategory
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> removeCategory(int categoryId) {
    // TODO: implement removeCategory
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<CategoryEntity>>> loadCategoriesWhere([
    FilterCategoriesOptions? filters,
  ]) {
    // TODO: implement loadCategoriesWhere
    throw UnimplementedError();
  }
}
