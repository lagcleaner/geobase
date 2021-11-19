part of 'map_source_input_cubit.dart';

@freezed
class MapSourceInputState with _$MapSourceInputState {
  const factory MapSourceInputState.initial() = _Initial;
  const factory MapSourceInputState.sourceInput({
    MapSourceConfigurationEntity? source,
    required MapSource selectedType,
  }) = _SourceInput;
  const factory MapSourceInputState.failureLoading(
    Failure failure,
  ) = _SourceLoadFailure;
  const factory MapSourceInputState.failureSaving({
    required Failure failure,
    required MapSourceConfigurationEntity source,
  }) = _SourceSavingLoadFailure;
}
