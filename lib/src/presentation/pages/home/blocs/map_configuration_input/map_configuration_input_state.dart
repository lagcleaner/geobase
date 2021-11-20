part of 'map_configuration_input_cubit.dart';

@freezed
class MapConfigurationInputState with _$MapConfigurationInputState {
  const factory MapConfigurationInputState.initial() = _Initial;
  const factory MapConfigurationInputState.configurationInput({
    MapConfigurationEntity? config,
    required MapSource selectedType,
  }) = _ConfigurationInput;
  const factory MapConfigurationInputState.failureLoading(
    Failure failure,
  ) = _ConfigurationLoadFailure;
  const factory MapConfigurationInputState.failureSaving({
    required Failure failure,
    required MapConfigurationEntity config,
  }) = _ConfigurationSavingLoadFailure;
}
