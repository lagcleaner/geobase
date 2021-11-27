import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/interfaces/interfaces.dart';
import 'package:latlong2/latlong.dart';

part 'marker_cubit.freezed.dart';
part 'marker_state.dart';

@injectable
class MarkerCubit extends Cubit<MarkerState> {
  MarkerCubit({
    required this.markerGetterService,
  }) : super(const MarkerState.filteredOut(markers: {}, temporalMarkers: {}));

  final IMarkerGetterService markerGetterService;

  Future<void> refreshMarkers([LatLng? currentCenter, double? zoom]) async {
    final either = await markerGetterService.getMarkers(
      FilterDataOptionsEntity.clean(),
    );
    final Set<IMarkable> temporals = state.maybeMap(
      orElse: () => {},
      filteredOut: (state) => state.temporalMarkers,
    );

    either.fold(
      (failure) {
        emit(MarkerState.failure(failure));
      },
      (entity) {
        emit(
          MarkerState.filteredOut(
            markers: entity.toSet(),
            temporalMarkers: temporals,
          ),
        );
      },
    );
  }

  Future<void> clearTemporaryMarker() async {
    state.map(
      failure: (failure) => null,
      filteredOut: (filteredOut) {
        emit(filteredOut.copyWith(temporalMarkers: {}));
      },
    );
  }

  Future<void> addTemporaryMarker(LatLng position) async {
    state.map(
      failure: (failure) => null,
      filteredOut: (filteredOut) {
        final newSet = filteredOut.temporalMarkers.toSet()
          ..add(TemporalMarkerEntity(location: position));
        emit(filteredOut.copyWith(temporalMarkers: newSet));
      },
    );
  }
}
