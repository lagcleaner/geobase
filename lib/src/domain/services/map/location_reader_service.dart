import 'package:dartz/dartz.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/repositories.dart';
import 'package:geobase/src/domain/services/services.dart';
import 'package:latlong2/latlong.dart';

@LazySingleton(as: ILocationReaderService)
class LocationReaderService implements ILocationReaderService {
  LocationReaderService(
    this.configRepository,
    this.locationRepository,
  );

  final IConfigurationRepository configRepository;
  final ILocationRepository locationRepository;
  //
  bool? _onOrOff;
  int? _currentRefreshInterval;

  @override
  Stream<Either<Failure, LatLng>> get onLocationChanged =>
      locationRepository.onLocationChanged;

  @override
  Future<Either<Failure, LatLng>> currentLocation() async {
    return locationRepository.currentLocation();
  }

  @override
  Stream<bool> get onUserSwitchOnOrOffLocationChanged =>
      configRepository.onUserPrefChanged
          .where((prefs) => prefs.showLocation != _onOrOff)
          .map((prefs) => _onOrOff = prefs.showLocation);

  @override
  Stream<int> get onRefreshIntervalChanged => configRepository.onUserPrefChanged
      .where(
        (prefs) =>
            prefs.updateInterval.inMilliseconds != _currentRefreshInterval,
      )
      .map(
        (prefs) =>
            _currentRefreshInterval = prefs.updateInterval.inMilliseconds,
      );
}
