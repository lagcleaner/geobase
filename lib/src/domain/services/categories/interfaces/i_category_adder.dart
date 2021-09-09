import 'package:dartz/dartz.dart';

import '../../../entities/entities.dart';

abstract class ICategoryAdderService {
  Future<Either<Failure, Category>> addCategory(Category newCategory);
}
