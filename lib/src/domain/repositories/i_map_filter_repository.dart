import 'package:dartz/dartz.dart';
import 'package:geobase/src/domain/entities/entities.dart';

abstract class IMapFilterRepository {
  Future<Either<Failure, FilterDataOptionsEntity>> loadDefaultFilterOptions();

  Future<Either<Failure, Unit>> setDefaultFilterOptions(
    FilterDataOptionsEntity filters,
  );
}
