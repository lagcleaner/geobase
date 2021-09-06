part of 'location_cubit.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState.loading() = _LoadingLocation;
  const factory LocationState.disable() = _LocationDisable;
  const factory LocationState.enable({
    required LatLng location,
    // @Default(Duration(seconds: 3)) Duration refreshInterval,
  }) = _LocationEnable;
}
