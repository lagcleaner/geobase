import 'package:dartz/dartz.dart';

import '../../../entities/entities.dart';

abstract class IGeodataLoaderService {
  /// Loads all geodata from source without distinctions.
  Future<Either<Failure, List<GeoData>>> loadAllGeodata();

  Future<Either<Failure, GeoData>> loadGeodataById(int geoDataId);

  /// According to the current filters.
  Future<Either<Failure, List<GeoData>>> loadGeodataWhere();
}
