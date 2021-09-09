import 'package:dartz/dartz.dart';

import '../../../entities/entities.dart';

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
