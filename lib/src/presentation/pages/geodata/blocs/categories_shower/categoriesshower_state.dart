part of 'categoriesshower_cubit.dart';

@freezed
class CategoriesShowerState with _$CategoriesShowerState {
  const factory CategoriesShowerState.state({
    @Default([]) List<CategoryGetEntity> categories,
    @Default(null) int? selected,
  }) = _State;
}
