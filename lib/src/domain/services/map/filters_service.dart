import 'package:dartz/dartz.dart';
import 'package:geobase/src/domain/services/map/interfaces/i_filters.dart';

import '../../../../injection.dart';
import '../../entities/failures/failures.dart';
import '../../entities/filter_options.dart';

@LazySingleton(as: IMapFiltersOptionsLoaderService)
@LazySingleton(as: IMapFiltersOptionsChangesListenerService)
@LazySingleton(as: IMapFiltersOptionsReaderService)
@LazySingleton(as: IMapFiltersOptionsWritterService)
class MapFilterService
    implements
        IMapFiltersOptionsReaderService,
        IMapFiltersOptionsWritterService {
  MapFilterService();

  @override
  Future<Either<Failure, FilterOptions>> loadFilterOptions() async {
    // TODO: implement loadFiltersInfo
    return Right(FilterOptions.clean());
  }

  @override
  // TODO: implement onFiltersInfoChanged
  Stream<FilterOptions> get onFiltersOptionsChanged =>
      throw UnimplementedError();

  @override
  Future<Either<Failure, Unit>> setFilterOptions(FilterOptions filters) {
    // TODO: implement setFilterOptions
    throw UnimplementedError();
  }
}
