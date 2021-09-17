import 'package:dartz/dartz.dart';

import '../../../entities/entities.dart';

abstract class IGeodataEditorService {
  Future<Either<Failure, GeoData>> loadGeodataById(int geoDataId);

  Future<Either<Failure, GeoData>> editGeodata(GeoData geoData);
}
