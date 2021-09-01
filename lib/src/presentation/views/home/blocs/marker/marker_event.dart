part of 'marker_bloc.dart';

@freezed
class MarkerEvent with _$MarkerEvent {
  const factory MarkerEvent.started([LatLng? corner1, LatLng? corner2]) =
      _MarkerStarted;
  const factory MarkerEvent.moved(LatLng corner1, LatLng corner2) = _MapMoved;
}
