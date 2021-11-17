import 'package:dartz/dartz.dart';

import 'package:geobase/src/domain/entities/entities.dart';

abstract class IGeodataService {
  Future<Either<Failure, GeodataGetEntity>> loadGeodataById(int geoDataId);

  /// if filters is omited geodata will be  loaded without distinction
  Future<Either<Failure, List<GeodataGetEntity>>> loadGeodataWhere([
    FilterDataOptionsEntity? filters,
  ]);

  Future<Either<Failure, int>> createGeodata(
    GeodataPostEntity geoData,
  );

  Future<Either<Failure, int>> editGeodata(
    GeodataPutEntity geoData,
  );

  Future<Either<Failure, Unit>> removeGeodata(int geoDataId);
}
