part of 'geodata_edit_cubit.dart';

@freezed
class GeodataEditState with _$GeodataEditState {
  const factory GeodataEditState.initial() = _Initial;
  const factory GeodataEditState.edit({
    required GeodataEditInitialData fetchData,
  }) = _EditData;
  const factory GeodataEditState.failure({
    required Failure failure,
  }) = _Failure;
}
