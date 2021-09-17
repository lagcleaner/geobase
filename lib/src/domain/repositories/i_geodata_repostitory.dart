import 'package:dartz/dartz.dart';

import '../entities/entities.dart';

abstract class IGeoDataRepository {
  /// Loads all geodata from source without distinctions.
  Future<Either<Failure, List<GeoData>>> loadAllGeodata();

  Future<Either<Failure, GeoData>> loadGeodataById(int geoDataId);

  /// According to the current filters.
  Future<Either<Failure, List<GeoData>>> loadGeodataWhere();

  Future<Either<Failure, GeoData>> addGeodata(GeoData geoData);

  Future<Either<Failure, GeoData>> updateGeodata(GeoData geoData);

  Future<Either<Failure, Unit>> removeGeodata(int geoDataId);
}
