import 'package:dartz/dartz.dart';

import '../../../../injection.dart';
import '../../entities/entities.dart';
import '../services.dart';

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
  Future<Either<Failure, FilterDataOptions>> loadFilterOptions() async {
    // TODO: implement loadFiltersInfo
    return Right(FilterDataOptions.clean());
  }

  @override
  // TODO: implement onFiltersInfoChanged
  Stream<FilterDataOptions> get onFiltersOptionsChanged =>
      throw UnimplementedError();

  @override
  Future<Either<Failure, Unit>> setFilterOptions(FilterDataOptions filters) {
    // TODO: implement setFilterOptions
    throw UnimplementedError();
  }
}
