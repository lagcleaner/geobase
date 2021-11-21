part of 'column_cubit.dart';

@freezed
class ColumnState with _$ColumnState {
  const factory ColumnState.state({
    required String name,
    FieldTypeGetEntity? type,
  }) = _State;
}
