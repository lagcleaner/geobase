import 'package:dartz/dartz.dart';

import 'package:geobase/src/domain/entities/entities.dart';

abstract class IGeodataService {
  Future<Either<Failure, GeoDataGetEntity>> loadGeodataById(int geoDataId);

  /// if filters is omited geodata will be  loaded without distinction
  Future<Either<Failure, List<GeoDataGetEntity>>> loadGeodataWhere([
    FilterDataOptions? filters,
  ]);

  // CRUD operations

  Future<Either<Failure, GeoDataGetEntity>> createGeodata(
    GeoDataPostEntity geoData,
  );

  Future<Either<Failure, GeoDataGetEntity>> editGeodata(
    GeoDataPutEntity geoData,
  );

  Future<Either<Failure, Unit>> removeGeodata(int geoDataId);
}
