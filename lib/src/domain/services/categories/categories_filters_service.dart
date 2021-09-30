import 'package:dartz/dartz.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICategoryFiltersOptionsLoaderService)
@LazySingleton(as: ICategoryFiltersOptionsChangesListenerService)
@LazySingleton(as: ICategoryFiltersOptionsReaderService)
@LazySingleton(as: ICategoryFiltersOptionsWritterService)
class GeodataFilterService
    implements
        ICategoryFiltersOptionsReaderService,
        ICategoryFiltersOptionsWritterService {
  GeodataFilterService();

  @override
  Future<Either<Failure, FilterCategoriesOptions>> loadFilterOptions() {
    // TODO: implement loadFilterOptions
    throw UnimplementedError();
  }

  @override
  // TODO: implement onFiltersOptionsChanged
  Stream<FilterCategoriesOptions> get onFiltersOptionsChanged =>
      throw UnimplementedError();

  @override
  Future<Either<Failure, Unit>> setFilterOptions(
    FilterCategoriesOptions filters,
  ) {
    // TODO: implement setFilterOptions
    throw UnimplementedError();
  }
}
