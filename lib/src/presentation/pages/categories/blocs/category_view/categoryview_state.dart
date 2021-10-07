part of 'categoryview_cubit.dart';

@freezed
abstract class CategoryViewState with _$CategoryViewState {
  const factory CategoryViewState.fetchInProgress() = _FetchInProgress;
  const factory CategoryViewState.fetchSuccess({
    required CategoryGetEntity category,
  }) = _FetchSuccess;
  const factory CategoryViewState.fetchFailure({
    required String error,
  }) = _FetchFailure;
}
