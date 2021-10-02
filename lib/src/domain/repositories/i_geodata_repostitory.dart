import 'package:dartz/dartz.dart';

import 'package:geobase/src/domain/entities/entities.dart';

abstract class IGeoDataRepository {
  /// Loads all geodata from source without distinctions.
  Future<Either<Failure, List<GeoDataGetEntity>>> loadAllGeodata();

  Future<Either<Failure, GeoDataGetEntity>> loadGeodataById(int geoDataId);

  /// According to the current filters.
  Future<Either<Failure, List<GeoDataGetEntity>>> loadGeodataWhere(
    FilterDataOptions filters,
  );

  Future<Either<Failure, GeoDataGetEntity>> addGeodata(
    GeoDataPostEntity geoData,
  );

  Future<Either<Failure, GeoDataGetEntity>> updateGeodata(
    GeoDataPutEntity geoData,
  );

  Future<Either<Failure, Unit>> removeGeodata(int geoDataId);
}
