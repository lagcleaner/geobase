import 'package:dartz/dartz.dart';
import 'package:geobase/src/domain/entities/entities.dart';

abstract class IMapFilterRepository {
  Future<Either<Failure, FilterDataOptions>> loadDefaultFilterOptions();

  Future<Either<Failure, Unit>> setDefaultFilterOptions(
    FilterDataOptions filters,
  );
}
