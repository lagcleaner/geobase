import 'package:dartz/dartz.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/repositories.dart';
import 'package:geobase/src/domain/services/geodata/interfaces/i_geodata.dart';

@LazySingleton(as: IGeodataService)
class GeoDataService implements IGeodataService {
  GeoDataService(
    this.dataRepository,
  );

  final IGeoDataRepository dataRepository;

  @override
  Future<Either<Failure, GeoDataGetEntity>> loadGeodataById(int geoDataId) {
    return dataRepository.loadGeodataById(geoDataId);
  }

  @override
  Future<Either<Failure, List<GeoDataGetEntity>>> loadGeodataWhere([
    FilterDataOptions? filters,
  ]) async {
    if (filters == null) {
      return dataRepository.loadAllGeodata();
    } else {
      return dataRepository.loadGeodataWhere(filters);
    }
  }

  @override
  Future<Either<Failure, GeoDataGetEntity>> createGeodata(
    GeoDataPostEntity geoData,
  ) async {
    return dataRepository.addGeodata(geoData);
  }

  @override
  Future<Either<Failure, GeoDataGetEntity>> editGeodata(
    GeoDataPutEntity geoData,
  ) async {
    return dataRepository.updateGeodata(geoData);
  }

  @override
  Future<Either<Failure, Unit>> removeGeodata(int geoDataId) async {
    return dataRepository.removeGeodata(geoDataId);
  }
}
