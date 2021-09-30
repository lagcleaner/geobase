import 'package:dartz/dartz.dart';

import 'package:geobase/src/domain/entities/entities.dart';

abstract class IGeodataService {
  /// Loads all geodata from source without distinctions.
  Future<Either<Failure, List<GeoDataEntity>>> loadAllGeodata();

  Future<Either<Failure, GeoDataEntity>> loadGeodataById(int geoDataId);

  /// According to the current filters.
  Future<Either<Failure, List<GeoDataEntity>>> loadGeodataWhere([
    FilterDataOptions? filters,
  ]);

  // CRUD operations

  Future<Either<Failure, GeoDataEntity>> createGeodata(GeoDataEntity geoData);

  Future<Either<Failure, GeoDataEntity>> editGeodata(GeoDataEntity geoData);

  Future<Either<Failure, Unit>> removeGeodata(int geoDataId);
}
