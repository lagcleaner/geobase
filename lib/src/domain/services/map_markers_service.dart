import 'package:dartz/dartz.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/repositories.dart';
import 'package:geobase/src/domain/services/interfaces/interfaces.dart';

@LazySingleton(as: IMarkerGetterService)
class GetMarkers implements IMarkerGetterService {
  GetMarkers(this.repository);

  final IGeodataRepository repository;

  @override
  Future<Either<Failure, List<IMarkable>>> getMarkers([
    FilterDataOptionsEntity? filters,
  ]) async {
    if (filters == null) {
      return repository.loadAllGeodata();
    } else {
      return repository.loadGeodataWhere(filters);
    }
  }
}
