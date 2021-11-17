import 'package:dartz/dartz.dart';

import 'package:geobase/src/domain/entities/entities.dart';

abstract class IGeodataRepository {
  /// Loads all geodata from source without distinctions.
  Future<Either<Failure, List<GeodataGetEntity>>> loadAllGeodata();

  Future<Either<Failure, GeodataGetEntity>> loadGeodataById(int geoDataId);

  /// According to the current filters.
  Future<Either<Failure, List<GeodataGetEntity>>> loadGeodataWhere(
    FilterDataOptionsEntity filters,
  );

  Future<Either<Failure, int>> addGeodata(
    GeodataPostEntity geoData,
  );

  Future<Either<Failure, int>> editGeodata(
    GeodataPutEntity geoData,
  );

  Future<Either<Failure, Unit>> removeGeodata(int geoDataId);
}
