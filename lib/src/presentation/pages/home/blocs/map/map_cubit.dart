import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/services.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:latlong2/latlong.dart';

part 'map_cubit.freezed.dart';
part 'map_state.dart';

@injectable
class MapCubit extends Cubit<MapState> {
  MapCubit({
    required this.confReader,
    @factoryParam this.initialLocation,
  }) : super(
          MapState.state(
            mapController: MapControllerImpl(),
            mapConfiguration: MapConfigurationEntity.empty(),
          ),
        );

  final LatLng? initialLocation;
  final IMapConfigurationReaderService confReader;

  Future<void> initialConfigurationsRequested() async {
    emit(state.copyWith(loadingConfigs: true));

    final result = await confReader.loadMapConfigurations();
    await result.fold(
      (failure) async {
        emit(
          state.copyWith(
            failure: failure,
            loadingConfigs: false,
          ),
        );
      },
      (entity) async {
        emit(
          state.copyWith(
            mapConfiguration: entity,
            loadingConfigs: false,
          ),
        );
      },
    );
    if (initialLocation != null) {
      await state.mapController.onReady;
      state.mapController.move(initialLocation!, 17.0);
    }
  }

  Future<void> markerTouched(IMarkable marker) async {
    await state.mapController.onReady;
    state.mapController.move(marker.location, 17.0);

    /// store the last location touched to start at this point next time...
  }
}
