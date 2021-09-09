import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../entities/entities.dart';
import '../services.dart';

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
      FilterCategoriesOptions filters) {
    // TODO: implement setFilterOptions
    throw UnimplementedError();
  }
}
