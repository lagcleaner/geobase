import 'package:dartz/dartz.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/repositories.dart';
import 'package:geobase/src/domain/services/services.dart';
import 'package:latlong2/latlong.dart';

@LazySingleton(as: ILocationReaderService)
class LocationReaderService implements ILocationReaderService {
  LocationReaderService(
    this.locationRepository,
  );

  final ILocationRepository locationRepository;

  @override
  Stream<Either<Failure, LatLng>> get onLocationChanged =>
      locationRepository.onLocationChanged;

  @override
  Future<Either<Failure, LatLng>> currentLocation() async {
    return locationRepository.currentLocation();
  }

  @override
  Future<void> requestEnable() async {
    return locationRepository.requestEnable();
  }
}
