import 'package:dartz/dartz.dart';
import 'package:latlong2/latlong.dart';

import '../../../../injection.dart';
import '../../entities/failures/failures.dart';
import 'interfaces/i_location.dart';

@LazySingleton(as: ILocationConfigurationService)
@LazySingleton(as: ILocationGetterService)
@LazySingleton(as: ILocationStreamerService)
class GetCurrentLocation
    implements ILocationGetterService, ILocationStreamerService {
  GetCurrentLocation();

  @override
  Future<Either<Failure, Unit>> disable() {
    // TODO: implement disable
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> initialize(int refreshInterval) {
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
