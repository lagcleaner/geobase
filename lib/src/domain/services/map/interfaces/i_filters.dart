import 'package:dartz/dartz.dart';

import '../../../entities/entities.dart';

abstract class IMapFiltersOptionsLoaderService {
  Future<Either<Failure, FilterDataOptions>> loadFilterOptions();
}

abstract class IMapFiltersOptionsChangesListenerService {
  Stream<FilterDataOptions> get onFiltersOptionsChanged;
}

abstract class IMapFiltersOptionsReaderService
    implements
        IMapFiltersOptionsLoaderService,
        IMapFiltersOptionsChangesListenerService {}

abstract class IMapFiltersOptionsWritterService {
  Future<Either<Failure, Unit>> setFilterOptions(FilterDataOptions filters);
}
