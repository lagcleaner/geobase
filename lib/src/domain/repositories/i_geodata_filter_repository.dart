import 'package:dartz/dartz.dart';
import 'package:geobase/src/domain/entities/entities.dart';

abstract class IGeoDataFilterRepository {
  Future<Either<Failure, FilterDataOptions>> loadDefaultFilterOptions();

  Stream<FilterDataOptions> get onFiltersOptionsChanged;

  Future<Either<Failure, Unit>> setDefaultFilterOptions(
    FilterDataOptions filters,
  );
}
