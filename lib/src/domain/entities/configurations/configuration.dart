import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:geobase/src/domain/entities/configurations/source_configuration.dart';
import 'package:geobase/src/domain/entities/configurations/user_preferences.dart';

part 'configuration.freezed.dart';

@freezed
class ConfigurationEntity with _$ConfigurationEntity {
  const factory ConfigurationEntity({
    required MapSourceConfiguration sourceConfiguration,
    required UserPreferencesEntity preferences,
  }) = _ConfigurationEntity;
}
