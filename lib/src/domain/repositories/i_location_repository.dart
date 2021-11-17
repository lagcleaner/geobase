import 'package:dartz/dartz.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:latlong2/latlong.dart';

abstract class ILocationRepository {
  Stream<Either<Failure, LatLng>> get onLocationChanged;

  Future<Either<Failure, LatLng>> currentLocation();
}
