import 'package:dartz/dartz.dart';

import '../../../entities/entities.dart';

abstract class IGeodataEliminatorService {
  Future<Either<Failure, Unit>> removeGeodata(int geoDataId);
}
