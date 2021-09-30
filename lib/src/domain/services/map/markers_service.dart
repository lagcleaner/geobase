import 'package:dartz/dartz.dart';

import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/services.dart';

@LazySingleton(as: IMarkerGetterService)
class GetMarkers implements IMarkerGetterService {
  GetMarkers();

  @override
  Future<Either<Failure, List<IMarkable>>> getMarkers([
    FilterDataOptions? filters,
  ]) async {
    // TODO: automatic filter accordingly to saved FilterOptions
    // TODO: implement getMarkers
    return const Right([]);
  }
}
