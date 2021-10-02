import 'package:dartz/dartz.dart';

import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/i_geodata_repostitory.dart';
import 'package:geobase/src/domain/services/services.dart';

@LazySingleton(as: IMarkerGetterService)
class GetMarkers implements IMarkerGetterService {
  GetMarkers(this.repository);

  final IGeoDataRepository repository;

  @override
  Future<Either<Failure, List<IMarkable>>> getMarkers([
    FilterDataOptions? filters,
  ]) async {
    // return const Right([]);
    if (filters == null) {
      return repository.loadAllGeodata();
    } else {
      return repository.loadGeodataWhere(filters);
    }
  }
}
