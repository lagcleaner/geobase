part of 'geodataview_cubit.dart';

@freezed
class GeodataViewState with _$GeodataViewState {
  const factory GeodataViewState.fetchInProgress() = _FetchInProgress;
  const factory GeodataViewState.fetchSuccess({
    required GeodataGetEntity geodata,
  }) = _FetchSuccess;
  const factory GeodataViewState.fetchFailure({
    required String error,
  }) = _FetchFailure;
}
