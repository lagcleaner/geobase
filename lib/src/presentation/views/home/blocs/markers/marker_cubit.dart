import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../domain/entities/entities.dart';
import '../../../../../domain/services/map/interfaces/i_markers.dart';

part 'marker_cubit.freezed.dart';
part 'marker_state.dart';

class MarkerCubit extends Cubit<MarkerState> {
  final IMarkerGetterService markerGetterService;

  MarkerCubit({
    required this.markerGetterService,
  }) : super(const MarkerState.filteredOut(markers: {}));

  Stream<MarkerState> refreshMarkers() async* {
    final either = await markerGetterService.getMarkers();

    yield* either.fold(
      (failure) async* {
        yield MarkerState.failure(failure);
      },
      (entity) async* {
        yield MarkerState.filteredOut(markers: entity.toSet());
      },
    );
  }
}
