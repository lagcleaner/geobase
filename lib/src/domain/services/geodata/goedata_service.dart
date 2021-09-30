import 'package:dartz/dartz.dart';
import 'package:geobase/injection.dart';

import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/entities/geodata/geodata.dart';
import 'package:geobase/src/domain/services/geodata/interfaces/i_geodata.dart';

@LazySingleton(as: IGeodataService)
class GeoDataService implements IGeodataService {
  @override
  Future<Either<Failure, GeoDataEntity>> createGeodata(GeoDataEntity geoData) {
    // TODO: implement addGeodata
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, GeoDataEntity>> editGeodata(GeoDataEntity geoData) {
    // TODO: implement editGeodata
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<GeoDataEntity>>> loadAllGeodata() {
    // TODO: implement loadAllGeodata
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, GeoDataEntity>> loadGeodataById(int geoDataId) {
    // TODO: implement loadGeodataById
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<GeoDataEntity>>> loadGeodataWhere([
    FilterDataOptions? filters,
  ]) {
    // TODO: implement loadGeodataWhere
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> removeGeodata(int geoDataId) {
    // TODO: implement removeGeodata
    throw UnimplementedError();
  }
}
