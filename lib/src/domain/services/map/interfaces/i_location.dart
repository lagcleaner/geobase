import 'package:dartz/dartz.dart';
import 'package:latlong2/latlong.dart';

import '../../../entities/entities.dart';

abstract class ILocationConfigurationService {
  Future<Either<Failure, Unit>> initialize(int refreshInterval);

  Future<Either<Failure, Unit>> disable();
}

abstract class ILocationGetterService implements ILocationConfigurationService {
  Future<Either<Failure, LatLng>> currentLocation();
}

abstract class ILocationStreamerService
    implements ILocationConfigurationService {
  Stream<Either<Failure, LatLng>> get onLocationChanged;
}
