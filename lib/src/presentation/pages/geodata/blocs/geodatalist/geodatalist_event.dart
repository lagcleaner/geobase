part of 'geodatalist_bloc.dart';

@freezed
class GeodataListEvent with _$GeodataListEvent {
  const factory GeodataListEvent.fetched({
    int? categoryId,
  }) = _Fetched;
}
