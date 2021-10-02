import 'package:dartz/dartz.dart';

import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/i_categories_repository.dart';
import 'package:geobase/src/domain/services/services.dart';

@LazySingleton(as: ICategoryService)
class CategoriesService implements ICategoryService {
  CategoriesService(
    this.categoriesRepository,
  );

  final ICategoriesRepository categoriesRepository;

  @override
  Future<Either<Failure, CategoryGetEntity>> getCategory(int categoryId) async {
    return categoriesRepository.getCategory(categoryId);
  }

  @override
  Future<Either<Failure, List<CategoryGetEntity>>> loadCategoriesWhere([
    FilterCategoriesOptions? filters,
  ]) async {
    return categoriesRepository.loadCategoriesWhere(filters);
  }

  @override
  Future<Either<Failure, CategoryGetEntity>> createCategory(
    CategoryPostEntity newCategory,
  ) async {
    return categoriesRepository.addCategory(newCategory);
  }

  @override
  Future<Either<Failure, Unit>> removeCategory(int categoryId) async {
    return categoriesRepository.removeCategory(categoryId);
  }
}
