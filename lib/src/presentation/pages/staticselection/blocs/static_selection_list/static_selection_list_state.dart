part of 'static_selection_list_cubit.dart';

@freezed
class StaticSelectionListState with _$StaticSelectionListState {
  const factory StaticSelectionListState.initial() = _Initial;
  const factory StaticSelectionListState.fetchInProgress() = _FetchInProgress;
  const factory StaticSelectionListState.fetchSuccess({
    required List<FieldTypeStaticSelectionGetEntity> staticSelectionTypes,
  }) = _FetchSuccess;
  const factory StaticSelectionListState.fetchSuccessNotFound() =
      _FetchSuccessNotFound;
  const factory StaticSelectionListState.fetchFailure({
    required String error,
  }) = _FetchFailure;
}
