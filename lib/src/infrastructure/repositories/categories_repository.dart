import 'package:dartz/dartz.dart';
import 'package:geobase/src/domain/entities/categories/category.dart';
import 'package:geobase/src/domain/entities/failures/failures.dart';
import 'package:geobase/src/domain/repositories/repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ICategoriesRepository)
class CategoriesRepository implements ICategoriesRepository {
  @override
  Future<Either<Failure, CategoryEntity>> addCategory(
      CategoryEntity newCategory) {
    // TODO: implement addCategory
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, CategoryEntity>> getCategory(int categoryId) {
    // TODO: implement getCategory
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<CategoryEntity>>> loadAllCategories() {
    // TODO: implement loadAllCategories
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<CategoryEntity>>> loadCategoriesWhere() {
    // TODO: implement loadCategoriesWhere
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> removeCategory(int categoryId) {
    // TODO: implement removeCategory
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, CategoryEntity>> updateCategory(
      CategoryEntity newCategory) {
    // TODO: implement updateCategory
    throw UnimplementedError();
  }
}
