import 'package:dartz/dartz.dart';
import 'package:latlong2/latlong.dart';

import '../../../entities/entities.dart';

abstract class ILocationConfigurationService {
  Future<Either<Failure, Unit>> changeRefreshDuration(Duration refreshInterval);
}

abstract class ILocationGetterService implements ILocationConfigurationService {
  Future<Either<Failure, LatLng>> currentLocation();
}

abstract class ILocationStreamerService
    implements ILocationConfigurationService {
  Stream<Either<Failure, LatLng>> get onLocationChanged;
}

abstract class ILocationConfigurationChangedStreamerService {
  ///Stream when is switched on or switched off the Location Service
  Stream<bool> get onUserSwitchOnOrOffLocationChanged;

  ///Stream when refresh interval changed
  Stream<int> get onRefreshIntervalChanged;
}

abstract class ILocationReaderService
    implements ILocationStreamerService, ILocationGetterService {}
