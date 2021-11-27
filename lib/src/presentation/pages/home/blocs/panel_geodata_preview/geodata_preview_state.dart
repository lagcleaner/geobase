part of 'geodata_preview_cubit.dart';

@freezed
class GeodataPreviewState with _$GeodataPreviewState {
  const factory GeodataPreviewState.loading() = _Loading;
  const factory GeodataPreviewState.failure([String? error]) = _Failure;
  const factory GeodataPreviewState.loaded(GeodataGetEntity geodata) = _Loaded;
}
