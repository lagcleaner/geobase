import 'package:dartz/dartz.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/repositories.dart';
import 'package:geobase/src/infrastructure/providers/interfaces/interfaces.dart';
import 'package:injectable/injectable.dart';
import 'package:latlong2/latlong.dart';

@Injectable(as: ILocationRepository)
class LocationRepository implements ILocationRepository {
  LocationRepository(
    this.provider,
  );

  final ILocationProvider provider;

  @override
  Future<Either<Failure, Unit>> changeUpdateInterval(Duration duration) {
    // TODO: implement changeUpdateInterval
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, LatLng>> currentLocation() {
    // TODO: implement currentLocation
    throw UnimplementedError();
  }

  @override
  // TODO: implement onLocationChanged
  Stream<Either<Failure, LatLng>> get onLocationChanged =>
      throw UnimplementedError();
}
