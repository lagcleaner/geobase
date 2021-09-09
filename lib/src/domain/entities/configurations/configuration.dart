import '../filters/filter_options.dart';
import 'source_configuration.dart';
import 'user_preferences.dart';

class Configuration {
  final MapSourceConfiguration sourceConfiguration;
  final UserPreferences preferences;
  final FilterOptions filters;

  Configuration({
    required this.sourceConfiguration,
    required this.preferences,
    required this.filters,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Configuration &&
        other.sourceConfiguration == sourceConfiguration &&
        other.preferences == preferences &&
        other.filters == filters;
  }

  @override
  int get hashCode =>
      sourceConfiguration.hashCode ^ preferences.hashCode ^ filters.hashCode;
}
