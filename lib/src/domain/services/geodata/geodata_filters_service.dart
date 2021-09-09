import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../entities/entities.dart';
import '../services.dart';

@LazySingleton(as: IGeodataFiltersOptionsLoaderService)
@LazySingleton(as: IGeodataFiltersOptionsChangesListenerService)
@LazySingleton(as: IGeodataFiltersOptionsReaderService)
@LazySingleton(as: IGeodataFiltersOptionsWritterService)
class GeodataFilterService
    implements
        IGeodataFiltersOptionsReaderService,
        IGeodataFiltersOptionsWritterService {
  GeodataFilterService();

  @override
  Future<Either<Failure, FilterDataOptions>> loadFilterOptions() {
    // TODO: implement loadFilterOptions
    throw UnimplementedError();
  }

  @override
  // TODO: implement onFiltersOptionsChanged
  Stream<FilterDataOptions> get onFiltersOptionsChanged =>
      throw UnimplementedError();

  @override
  Future<Either<Failure, Unit>> setFilterOptions(FilterDataOptions filters) {
    // TODO: implement setFilterOptions
    throw UnimplementedError();
  }
}
