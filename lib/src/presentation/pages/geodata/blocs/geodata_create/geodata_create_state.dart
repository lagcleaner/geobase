part of 'geodata_create_cubit.dart';

@freezed
class GeodataCreateState with _$GeodataCreateState {
  const factory GeodataCreateState.initial() = _Initial;
  const factory GeodataCreateState.loading() = _Loading;
  const factory GeodataCreateState.categorySelection({
    required List<CategoryGetEntity> categories,
  }) = _GeodataCategorySelectionState;
  const factory GeodataCreateState.inputData({
    required GeodataCreateInitialData fetchData,
  }) = _GeodataCreateState;
  const factory GeodataCreateState.failure({
    required Failure failure,
  }) = _GeodataLoadingCategoriesErrorState;
}
