import 'package:dartz/dartz.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IGeoDataRepository)
class GeoDataRepository implements IGeoDataRepository {
  @override
  Future<Either<Failure, GeoDataEntity>> addGeodata(GeoDataEntity geoData) {
    // TODO: implement addGeodata
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<GeoDataEntity>>> loadAllGeodata() {
    // TODO: implement loadAllGeodata
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, GeoDataEntity>> loadGeodataById(int geoDataId) {
    // TODO: implement loadGeodataById
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<GeoDataEntity>>> loadGeodataWhere() {
    // TODO: implement loadGeodataWhere
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> removeGeodata(int geoDataId) {
    // TODO: implement removeGeodata
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, GeoDataEntity>> updateGeodata(GeoDataEntity geoData) {
    // TODO: implement updateGeodata
    throw UnimplementedError();
  }
}
