import 'package:dartz/dartz.dart';
import 'package:latlong2/latlong.dart';

import '../../../../injection.dart';
import '../../entities/entities.dart';
import '../services.dart';

@LazySingleton(as: ILocationConfigurationService)
@LazySingleton(as: ILocationGetterService)
@LazySingleton(as: ILocationStreamerService)
@LazySingleton(as: ILocationReaderService)
class GetCurrentLocation implements ILocationReaderService {
  GetCurrentLocation();

  @override
  Future<Either<Failure, Unit>> disable() {
    // TODO: implement disable
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> initialize(Duration refreshInterval) {
    // TODO: implement initialize
    throw UnimplementedError();
  }

  @override
  // TODO: implement onLocationChanged
  Stream<Either<Failure, LatLng>> get onLocationChanged =>
      throw UnimplementedError();

  @override
  Future<Either<Failure, LatLng>> currentLocation() {
    // TODO: implement currentLocation
    throw UnimplementedError();
  }
}
