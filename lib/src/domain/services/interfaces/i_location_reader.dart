import 'package:dartz/dartz.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:latlong2/latlong.dart';

abstract class ILocationReaderService {
  Future<Either<Failure, LatLng>> currentLocation();

  ///Stream Location info
  Stream<Either<Failure, LatLng>> get onLocationChanged;

  ///Stream when is switched on or switched off the Location Service
  Stream<bool> get onUserSwitchOnOrOffLocationChanged;
}
