import 'package:dartz/dartz.dart';
import 'package:geobase/src/domain/entities/failures/failures.dart';
import 'package:geobase/src/domain/entities/filter_options.dart';

// abstract class IMapFiltersOptionsService {}

abstract class IMapFiltersOptionsLoaderService {
  Future<Either<Failure, FilterOptions>> loadFilterOptions();
}

abstract class IMapFiltersOptionsChangesListenerService {
  Stream<FilterOptions> get onFiltersOptionsChanged;
}

abstract class IMapFiltersOptionsReaderService
    implements
        IMapFiltersOptionsLoaderService,
        IMapFiltersOptionsChangesListenerService {}

abstract class IMapFiltersOptionsWritterService {
  Future<Either<Failure, Unit>> setFilterOptions(FilterOptions filters);
}
