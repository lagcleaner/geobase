part of 'geodata_new_cubit.dart';

@freezed
class GeodataNewState with _$GeodataNewState {
  const factory GeodataNewState.loading() = _Loading;
  const factory GeodataNewState.loadedCategories(
    List<CategoryGetEntity> categories, {
    int? selected,
  }) = _LoadedCategories;
  const factory GeodataNewState.failure([String? error]) = _Failure;
}
