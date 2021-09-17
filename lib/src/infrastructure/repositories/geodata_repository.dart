import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/entities.dart';
import '../../domain/repositories/repositories.dart';

@Injectable(as: IGeoDataRepository)
class GeoDataRepository implements IGeoDataRepository {
  @override
  Future<Either<Failure, GeoData>> addGeodata(GeoData geoData) {
    // TODO: implement addGeodata
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<GeoData>>> loadAllGeodata() {
    // TODO: implement loadAllGeodata
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, GeoData>> loadGeodataById(int geoDataId) {
    // TODO: implement loadGeodataById
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<GeoData>>> loadGeodataWhere() {
    // TODO: implement loadGeodataWhere
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> removeGeodata(int geoDataId) {
    // TODO: implement removeGeodata
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, GeoData>> updateGeodata(GeoData geoData) {
    // TODO: implement updateGeodata
    throw UnimplementedError();
  }
}
