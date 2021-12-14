import 'package:dartz/dartz.dart';

import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/repositories.dart';
import 'package:geobase/src/domain/services/interfaces/interfaces.dart';

@LazySingleton(as: ICategoryService)
class CategoriesService implements ICategoryService {
  CategoriesService(
    this.categoriesRepository,
    this.geodataRepository,
  );

  final ICategoriesRepository categoriesRepository;
  final IGeodataRepository geodataRepository;

  @override
  Future<Either<Failure, CategoryGetEntity>> getCategory(int categoryId) async {
    return categoriesRepository.getCategory(categoryId);
  }

  @override
  Future<Either<Failure, List<CategoryGetEntity>>> loadCategoriesWhere([
    FilterCategoriesOptionsEntity? filters,
  ]) async {
    return categoriesRepository.loadCategoriesWhere(filters);
  }

  @override
  Future<Either<Failure, int>> createCategory(
    CategoryPostEntity newCategory,
  ) async {
    return categoriesRepository.addCategory(newCategory);
  }

  @override
  Future<Either<Failure, Unit>> removeCategory(int categoryId) async {
    return categoriesRepository.removeCategory(categoryId);
  }

  @override
  Future<Either<Failure, int>> editCategory(
    CategoryPutEntity editedCategory,
  ) async {
    return categoriesRepository.editCategory(editedCategory);
  }

  @override
  Future<Either<Failure, bool>> hasRelatedData(int categoryId) async {
    final eitherData = await geodataRepository.loadGeodataWhere(
      FilterDataOptionsEntity(
        categoryId: categoryId,
      ),
    );
    return eitherData.fold((l) => Left(l), (r) => Right(r.isNotEmpty));
  }
}
