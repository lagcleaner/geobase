import 'package:dartz/dartz.dart';
import 'package:geobase/injection.dart';

import '../../entities/failures/failures.dart';
import '../../entities/geodata/geodata.dart';
import 'interfaces/i_geodata_adder.dart';
import 'interfaces/i_geodata_editor.dart';
import 'interfaces/i_geodata_eliminator.dart';
import 'interfaces/i_geodata_loader.dart';

@LazySingleton(as: IGeodataLoaderService)
@LazySingleton(as: IGeodataAdderService)
@LazySingleton(as: IGeodataEditorService)
@LazySingleton(as: IGeodataEliminatorService)
class GeoDataService
    implements
        IGeodataLoaderService,
        IGeodataAdderService,
        IGeodataEditorService,
        IGeodataEliminatorService {
  @override
  Future<Either<Failure, GeoData>> addGeodata(GeoData geoData) {
    // TODO: implement addGeodata
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, GeoData>> editGeodata(GeoData geoData) {
    // TODO: implement editGeodata
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
}
