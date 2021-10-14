part of 'relations_cubit.dart';

@freezed
class RelationsState with _$RelationsState {
  const factory RelationsState.state({
    @Default([]) List<CategoryGetEntity> categories,
    required String name,
    @Default(null) int? selected,
  }) = _State;
}
