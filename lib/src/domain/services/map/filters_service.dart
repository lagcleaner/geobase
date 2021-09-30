import 'package:dartz/dartz.dart';

import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/services.dart';

@LazySingleton(as: IMapFiltersOptionsService)
class MapFiltersService implements IMapFiltersOptionsService {
  MapFiltersService();

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
