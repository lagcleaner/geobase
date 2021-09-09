import 'package:dartz/dartz.dart';

import '../../../../injection.dart';
import '../../entities/entities.dart';
import '../services.dart';

@LazySingleton(as: ICategoriesLoaderService)
@LazySingleton(as: ICategoryAdderService)
@LazySingleton(as: ICategoryEditorService)
@LazySingleton(as: ICategoryEliminatorService)
class CategoriesService
    implements
        ICategoriesLoaderService,
        ICategoryAdderService,
        ICategoryEditorService,
        ICategoryEliminatorService {
  @override
  Future<Either<Failure, Category>> getCategory(int categoryId) {
    // TODO: implement getCategory
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Category>>> loadAllCategories() {
    // TODO: implement loadCategories
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Category>> addCategory(Category newCategory) {
    // TODO: implement addCategory
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Category>> editCategory(Category newCategory) {
    // TODO: implement editCategory
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> removeCategory(int categoryId) {
    // TODO: implement removeCategory
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Category>>> loadCategoriesWhere() {
    // TODO: implement loadCategoriesWhere
    throw UnimplementedError();
  }
}
