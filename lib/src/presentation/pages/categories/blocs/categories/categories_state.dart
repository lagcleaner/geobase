part of 'categories_bloc.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.initial() = _Initial;
  const factory CategoriesState.fetchInProgress() = _FetchInProgress;
  const factory CategoriesState.fetchSuccess({
    required List<CategoryGetEntity> categories,
  }) = _FetchSuccess;
  const factory CategoriesState.fetchSuccessNotFound() = _FetchSuccessNotFound;
  const factory CategoriesState.fetchFailure({
    required String error,
  }) = _FetchFailure;
}
