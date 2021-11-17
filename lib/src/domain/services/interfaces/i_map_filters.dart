import 'package:dartz/dartz.dart';

import 'package:geobase/src/domain/entities/entities.dart';

abstract class IMapFiltersOptionsService {
  Future<Either<Failure, FilterDataOptionsEntity>> loadFilterOptions();

  Future<Either<Failure, Unit>> setFilterOptions(
    FilterDataOptionsEntity filters,
  );
}
