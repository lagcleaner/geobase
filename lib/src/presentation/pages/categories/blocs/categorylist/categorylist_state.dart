part of 'categorylist_bloc.dart';

@freezed
class CategoryListState with _$CategoryListState {
  const factory CategoryListState.initial() = _Initial;
  const factory CategoryListState.fetchInProgress() = _FetchInProgress;
  const factory CategoryListState.fetchSuccess({
    required List<CategoryGetEntity> categories,
  }) = _FetchSuccess;
  const factory CategoryListState.fetchSuccessNotFound() =
      _FetchSuccessNotFound;
  const factory CategoryListState.fetchFailure({
    required String error,
  }) = _FetchFailure;
}
