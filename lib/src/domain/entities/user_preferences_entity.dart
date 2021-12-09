import 'package:geobase/src/domain/entities/entities.dart';

class UserPreferencesEntity {
  const UserPreferencesEntity({
    this.mapMode,
    this.initialLat,
    this.initialLng,
  });
  final MapModeEntity? mapMode;
  final double? initialLat;
  final double? initialLng;
}
