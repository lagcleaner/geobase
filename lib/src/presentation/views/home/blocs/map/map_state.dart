part of 'map_cubit.dart';

@freezed
class MapState with _$MapState {
  const factory MapState.state({
    @Default(ConnectionState.Online) ConnectionState connection,
    required MapController mapController,
    required MapSourceConfiguration sourceConfiguration,
    @Default(false) bool loadingConfigs,
    @Default(null) Failure? failure,
  }) = _MapState;
}
