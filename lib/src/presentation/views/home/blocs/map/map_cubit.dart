import 'package:bloc/bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../injection.dart';
import '../../../../../domain/entities/configurations/source_configuration.dart';
import '../../../../../domain/entities/failures/failures.dart';
import '../../../../../domain/usecases/configurations/load_source_configuration.dart';
import '../../../../core/app.dart';
import '../../misc/markers/marker_meta.dart';

part 'map_cubit.freezed.dart';
part 'map_cubit_data.dart';
part 'map_state.dart';

@injectable
class MapCubit extends Cubit<MapState> {
  final LoadSourceConfiguration loadSourceConfiguration;

  MapCubit({
    required this.loadSourceConfiguration,
  }) : super(MapState.state(
          mapController: MapController(),
          sourceConfiguration: const MapSourceConfiguration.empty(),
        ));

  Stream<MapState> initialConfigurationsRequested() async* {
    yield state.copyWith(loadingConfigs: true);
    // TODO: Load map configurations from saved configurations
    // // TODO: Load markers accordingly to the *filters*.
    // TODO: Establish an stream to update the configs and be notified in the act and refresh UI
    await Future.delayed(const Duration(seconds: 3));
    final result = await loadSourceConfiguration();
    yield* result.fold(
      (failure) async* {
        yield state.copyWith(
          failure: failure,
          loadingConfigs: false,
        );
      },
      (entity) async* {
        yield state.copyWith(
          sourceConfiguration: entity,
          loadingConfigs: false,
        );
      },
    );
  }

  Stream<MapState> markerTouched(MarkerMeta marker) async* {
    // make markerMeta and interface
    state.mapController.move(marker.point, state.mapController.zoom);
  }
}
