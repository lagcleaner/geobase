import 'source_configuration.dart';
import 'user_preferences.dart';

class Configuration {
  final MapSourceConfiguration sourceConfiguration;
  final UserPreferences preferences;

  Configuration({
    required this.sourceConfiguration,
    required this.preferences,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Configuration &&
        other.sourceConfiguration == sourceConfiguration &&
        other.preferences == preferences;
  }

  @override
  int get hashCode => sourceConfiguration.hashCode ^ preferences.hashCode;

  Configuration copyWith({
    MapSourceConfiguration? sourceConfiguration,
    UserPreferences? preferences,
  }) {
    return Configuration(
      sourceConfiguration: sourceConfiguration ?? this.sourceConfiguration,
      preferences: preferences ?? this.preferences,
    );
  }
}
