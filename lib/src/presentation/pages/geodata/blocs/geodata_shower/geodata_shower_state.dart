part of 'geodata_shower_cubit.dart';

@freezed
class GeodataShowerState with _$GeodataShowerState {
  const factory GeodataShowerState.initial() = _InitialState;
  const factory GeodataShowerState.state({
    @Default([]) List<GeodataGetEntity> geodataList,
  }) = _SuccessState;
  const factory GeodataShowerState.failure({
    String? message,
  }) = _FailureState;
}
