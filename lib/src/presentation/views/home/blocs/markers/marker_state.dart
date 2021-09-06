part of 'marker_cubit.dart';

@freezed
class MarkerState with _$MarkerState {
  const factory MarkerState.initial() = _Initial;
  const factory MarkerState.filtering() = _Filtering;
  const factory MarkerState.failure() = _Failure;
  const factory MarkerState.filteredOut({
    required Set<MarkerMeta> markers,
  }) = _Filtered;
}
