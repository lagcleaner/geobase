import 'package:dartz/dartz.dart';

import 'package:geobase/src/domain/entities/entities.dart';

abstract class IMapFiltersOptionsService {
  Future<Either<Failure, FilterDataOptions>> loadFilterOptions();

  Future<Either<Failure, Unit>> setFilterOptions(FilterDataOptions filters);
}
