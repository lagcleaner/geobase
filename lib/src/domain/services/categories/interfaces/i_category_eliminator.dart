import 'package:dartz/dartz.dart';

import '../../../entities/entities.dart';

abstract class ICategoryEliminatorService {
  Future<Either<Failure, Unit>> removeCategory(int categoryId);
}
