import 'package:dartz/dartz.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IGeoDataRepository)
class GeoDataRepository implements IGeoDataRepository {
  @override
  Future<Either<Failure, GeoDataGetEntity>> addGeodata(
    GeoDataPostEntity geoData,
  ) {
    // TODO: implement addGeodata
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<GeoDataGetEntity>>> loadAllGeodata() {
    // TODO: implement loadAllGeodata
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, GeoDataGetEntity>> loadGeodataById(int geoDataId) {
    // TODO: implement loadGeodataById
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<GeoDataGetEntity>>> loadGeodataWhere(
      FilterDataOptions filters) {
    // TODO: implement loadGeodataWhere
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> removeGeodata(int geoDataId) {
    // TODO: implement removeGeodata
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, GeoDataGetEntity>> updateGeodata(
    GeoDataPutEntity geoData,
  ) {
    // TODO: implement updateGeodata
    throw UnimplementedError();
  }
}
