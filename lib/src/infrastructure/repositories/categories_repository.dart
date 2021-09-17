import 'package:geobase/src/domain/entities/failures/failures.dart';
import 'package:geobase/src/domain/entities/categories/category.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/repositories.dart';

@Injectable(as: ICategoriesRepository)
class CategoriesRepository implements ICategoriesRepository {
  @override
  Future<Either<Failure, Category>> addCategory(Category newCategory) {
    // TODO: implement addCategory
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Category>> getCategory(int categoryId) {
    // TODO: implement getCategory
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Category>>> loadAllCategories() {
    // TODO: implement loadAllCategories
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Category>>> loadCategoriesWhere() {
    // TODO: implement loadCategoriesWhere
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> removeCategory(int categoryId) {
    // TODO: implement removeCategory
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Category>> updateCategory(Category newCategory) {
    // TODO: implement updateCategory
    throw UnimplementedError();
  }
}
