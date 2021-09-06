import 'package:latlong2/latlong.dart';

import '../filter_options.dart';

class UserPreferences {
  final bool showLocation;
  final Duration updateInterval;

  UserPreferences({
    this.showLocation = false,
    this.updateInterval = const Duration(seconds: 3),
  });

  UserPreferences copyWith({
    bool? showLocation,
    Duration? updateInterval,
  }) {
    return UserPreferences(
      showLocation: showLocation ?? this.showLocation,
      updateInterval: updateInterval ?? this.updateInterval,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserPreferences &&
        other.showLocation == showLocation &&
        other.updateInterval == updateInterval;
  }

  @override
  int get hashCode => showLocation.hashCode ^ updateInterval.hashCode;
}
