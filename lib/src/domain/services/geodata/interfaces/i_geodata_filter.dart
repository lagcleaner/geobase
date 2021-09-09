import 'package:dartz/dartz.dart';

import '../../../entities/entities.dart';

abstract class IGeodataFiltersOptionsLoaderService {
  Future<Either<Failure, FilterDataOptions>> loadFilterOptions();
}

abstract class IGeodataFiltersOptionsChangesListenerService {
  Stream<FilterDataOptions> get onFiltersOptionsChanged;
}

abstract class IGeodataFiltersOptionsReaderService
    implements
        IGeodataFiltersOptionsLoaderService,
        IGeodataFiltersOptionsChangesListenerService {}

abstract class IGeodataFiltersOptionsWritterService {
  Future<Either<Failure, Unit>> setFilterOptions(FilterDataOptions filters);
}
