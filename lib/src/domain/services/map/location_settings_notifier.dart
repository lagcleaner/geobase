import 'dart:async';

import 'package:geobase/src/domain/entities/configurations/user_preferences.dart';
import 'package:injectable/injectable.dart';

import 'package:geobase/src/domain/repositories/i_configuration_repository.dart';
import 'package:geobase/src/domain/services/map/interfaces/i_location.dart';

@LazySingleton(as: ILocationConfigurationChangedStreamerService)
class LocationSettingsNotifierService
    implements ILocationConfigurationChangedStreamerService {
  final IConfigurationRepository repository;

  bool? _onOrOff;
  int? _currentRefreshInterval;

  LocationSettingsNotifierService({
    required this.repository,
  });

  @override
  Stream<bool> get onUserSwitchOnOrOffLocationChanged =>
      repository.onUserPrefChanged
          .where((prefs) => prefs.showLocation != _onOrOff)
          .map((prefs) => _onOrOff = prefs.showLocation);

  @override
  Stream<int> get onRefreshIntervalChanged => repository.onUserPrefChanged
      .where((prefs) =>
          prefs.updateInterval.inMilliseconds != _currentRefreshInterval)
      .map((prefs) =>
          _currentRefreshInterval = prefs.updateInterval.inMilliseconds);
}
