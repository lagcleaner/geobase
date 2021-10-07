import 'package:dartz/dartz.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ICategoriesRepository)
class CategoriesRepository implements ICategoriesRepository {
  CategoriesRepository();

  @override
  Future<Either<Failure, CategoryGetEntity>> addCategory(
    CategoryPostEntity newCategory,
  ) {
    // TODO: implement addCategory
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, CategoryGetEntity>> getCategory(int categoryId) {
    // TODO: implement getCategory
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> removeCategory(int categoryId) {
    // TODO: implement removeCategory
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<CategoryGetEntity>>> loadCategoriesWhere([
    FilterCategoriesOptions? filters,
  ]) {
    // TODO: implement loadCategoriesWhere
    throw UnimplementedError();
  }
}
