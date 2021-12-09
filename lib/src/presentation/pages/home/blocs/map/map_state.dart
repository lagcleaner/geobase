part of 'map_cubit.dart';

@freezed
class MapState with _$MapState {
  const factory MapState.state({
    required MapController mapController,
    required MapConfigurationEntity mapConfiguration,
    required MapModeEntity mapMode,
    @Default(false) bool loadingConfigs,
    @Default(null) Failure? failure,
  }) = _MapState;
}
