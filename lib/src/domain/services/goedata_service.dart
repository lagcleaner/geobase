import 'package:dartz/dartz.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/repositories.dart';
import 'package:geobase/src/domain/services/interfaces/interfaces.dart';

@LazySingleton(as: IGeodataService)
class GeodataService implements IGeodataService {
  GeodataService(
    this.dataRepository,
  );

  final IGeodataRepository dataRepository;

  @override
  Future<Either<Failure, GeodataGetEntity>> loadGeodataById(int geoDataId) {
    return dataRepository.loadGeodataById(geoDataId);
  }

  @override
  Future<Either<Failure, List<GeodataGetEntity>>> loadGeodataWhere([
    FilterDataOptionsEntity? filters,
  ]) async {
    if (filters == null) {
      return dataRepository.loadAllGeodata();
    } else {
      return dataRepository.loadGeodataWhere(filters);
    }
  }

  @override
  Future<Either<Failure, int>> createGeodata(
    GeodataPostEntity geoData,
  ) async {
    return dataRepository.addGeodata(geoData);
  }

  @override
  Future<Either<Failure, int>> editGeodata(
    GeodataPutEntity geoData,
  ) async {
    return dataRepository.editGeodata(geoData);
  }

  @override
  Future<Either<Failure, Unit>> removeGeodata(int geoDataId) async {
    return dataRepository.removeGeodata(geoDataId);
  }
}
