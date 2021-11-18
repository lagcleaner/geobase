part of 'geodatalist_bloc.dart';

@freezed
class GeodataListState with _$GeodataListState {
  const factory GeodataListState.initial() = _Initial;
  const factory GeodataListState.fetchInProgress() = _FetchInProgress;
  const factory GeodataListState.fetchSuccess({
    required List<GeodataGetEntity> geodataList,
  }) = _FetchSuccess;
  const factory GeodataListState.fetchSuccessNotFound() = _FetchSuccessNotFound;
  const factory GeodataListState.fetchFailure({
    required String error,
  }) = _FetchFailure;
}
