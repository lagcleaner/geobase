import 'package:dartz/dartz.dart';

import '../../../entities/entities.dart';

abstract class ICategoryEditorService {
  Future<Either<Failure, Category>> getCategory(int categoryId);

  Future<Either<Failure, Category>> editCategory(Category newCategory);
}
