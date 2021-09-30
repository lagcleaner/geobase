import 'package:dartz/dartz.dart';

import 'package:geobase/src/domain/entities/entities.dart';

abstract class ICategoryFiltersOptionsLoaderService {
  Future<Either<Failure, FilterCategoriesOptions>> loadFilterOptions();
}

abstract class ICategoryFiltersOptionsChangesListenerService {
  Stream<FilterCategoriesOptions> get onFiltersOptionsChanged;
}

abstract class ICategoryFiltersOptionsReaderService
    implements
        ICategoryFiltersOptionsLoaderService,
        ICategoryFiltersOptionsChangesListenerService {}

abstract class ICategoryFiltersOptionsWritterService {
  Future<Either<Failure, Unit>> setFilterOptions(
    FilterCategoriesOptions filters,
  );
}
