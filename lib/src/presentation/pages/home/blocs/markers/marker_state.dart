part of 'marker_cubit.dart';

@freezed
class MarkerState with _$MarkerState {
  const factory MarkerState.failure(
    Failure failure,
  ) = _Failure;
  const factory MarkerState.filteredOut({
    required Set<IMarkable> markers,
    required Set<IMarkable> temporalMarkers,
  }) = _Filtered;
}
