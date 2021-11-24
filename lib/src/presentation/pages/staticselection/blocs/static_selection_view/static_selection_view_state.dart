part of 'static_selection_view_cubit.dart';

@freezed
class StaticSelectionViewState with _$StaticSelectionViewState {
  const factory StaticSelectionViewState.fetchInProgress() = _FetchInProgress;
  const factory StaticSelectionViewState.fetchSuccess({
    required FieldTypeStaticSelectionGetEntity staticSelection,
  }) = _FetchSuccess;
  const factory StaticSelectionViewState.fetchFailure({
    required String error,
  }) = _FetchFailure;
}
