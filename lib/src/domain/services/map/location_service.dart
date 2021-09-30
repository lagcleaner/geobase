import 'package:dartz/dartz.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/repositories.dart';
import 'package:geobase/src/domain/services/services.dart';
import 'package:latlong2/latlong.dart';

@LazySingleton(as: ILocationService)
class LocationService implements ILocationService {
  LocationService({required this.repository});

  final IConfigurationRepository repository;
  //
  bool? _onOrOff;
  int? _currentRefreshInterval;

  @override
  Future<Either<Failure, Unit>> changeRefreshDuration(Duration duration) {
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

  @override
  Stream<bool> get onUserSwitchOnOrOffLocationChanged =>
      repository.onUserPrefChanged
          .where((prefs) => prefs.showLocation != _onOrOff)
          .map((prefs) => _onOrOff = prefs.showLocation);

  @override
  Stream<int> get onRefreshIntervalChanged => repository.onUserPrefChanged
      .where(
        (prefs) =>
            prefs.updateInterval.inMilliseconds != _currentRefreshInterval,
      )
      .map(
        (prefs) =>
            _currentRefreshInterval = prefs.updateInterval.inMilliseconds,
      );
}
