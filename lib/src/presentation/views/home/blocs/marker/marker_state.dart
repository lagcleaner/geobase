part of 'marker_bloc.dart';

@freezed
class MarkerState with _$MarkerState {
  const factory MarkerState.initial() = _InitialState;
  const factory MarkerState.state({
    required LatLng corner1,
    required LatLng corner2,
    required List<LatLng> markers,
  }) = _MarkerState;
  const factory MarkerState.failure({required String message}) = _FailureState;
}
