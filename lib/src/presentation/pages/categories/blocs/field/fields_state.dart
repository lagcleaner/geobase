part of 'fields_cubit.dart';

@freezed
class FieldsState with _$FieldsState {
  const factory FieldsState.state({
    required String name,
    FieldTypeEnum? type,
  }) = _State;
}
