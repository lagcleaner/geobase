import 'package:dartz/dartz.dart';

import '../../../entities/entities.dart';

abstract class IGeodataAdderService {
  Future<Either<Failure, GeoData>> addGeodata(GeoData geoData);
}
