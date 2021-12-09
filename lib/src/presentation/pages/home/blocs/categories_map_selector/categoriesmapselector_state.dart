part of 'categoriesmapselector_cubit.dart';

@freezed
class CategoriesMapSelectorState with _$CategoriesMapSelectorState {
  const factory CategoriesMapSelectorState.state({
    @Default([]) List<CategoryGetEntity> categories,
    @Default(null) int? selected,
  }) = _State;
}
