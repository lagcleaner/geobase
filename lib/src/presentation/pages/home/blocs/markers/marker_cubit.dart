import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/interfaces/interfaces.dart';

part 'marker_cubit.freezed.dart';
part 'marker_state.dart';

@injectable
class MarkerCubit extends Cubit<MarkerState> {
  MarkerCubit({
    required this.markerGetterService,
  }) : super(const MarkerState.filteredOut(markers: {}));

  final IMarkerGetterService markerGetterService;

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
