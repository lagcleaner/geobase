import 'package:dartz/dartz.dart';

import 'package:geobase/src/domain/entities/entities.dart';

abstract class IGeodataFiltersOptionsService {
  Future<Either<Failure, FilterDataOptionsEntity>> loadFilterOptions();

  Stream<FilterDataOptionsEntity> get onFiltersOptionsChanged;

  Future<Either<Failure, Unit>> setFilterOptions(
      FilterDataOptionsEntity filters);
}
