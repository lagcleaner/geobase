import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/services.dart';
import 'package:latlong2/latlong.dart';

part 'map_cubit.freezed.dart';
part 'map_state.dart';

@injectable
class MapCubit extends Cubit<MapState> {
  MapCubit({
    @factoryParam this.initialLocation,
    required this.confReader,
    required this.usPrefsReader,
    required this.usPrefsWritter,
  }) : super(
          MapState.state(
            mapController: MapControllerImpl(),
            mapConfiguration: MapConfigurationEntity.empty(),
            mapMode: const MapModeEntity(),
          ),
        );

  final LatLng? initialLocation;
  final IMapConfigurationReaderService confReader;
  final IUserPreferencesReaderService usPrefsReader;
  final IUserPreferencesWritterService usPrefsWritter;

  Future<void> initialConfigurationsRequested() async {
    emit(state.copyWith(loadingConfigs: true, failure: null));
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
    //TODO: TEST IF THIS HAS NO PROBLEMS
    // await state.mapController.onReady;

    if (initialLocation != null) {
      state.mapController.move(initialLocation!, 16.0);
    } else {
      final initialLocatEither = await usPrefsReader.loadUserPreferences();
      await initialLocatEither.fold(
        (l) async {},
        (uprefs) async {
          if (uprefs.initialLat != null && uprefs.initialLng != null) {
            state.mapController.move(
              LatLng(uprefs.initialLat!, uprefs.initialLng!),
              state.mapController.camera.zoom,
            );
            emit(
              state.copyWith(mapMode: uprefs.mapMode ?? const MapModeEntity()),
            );
          }
        },
      );
    }
  }

  Future<void> markerTouched(IMarkable marker) async {
    //TODO: TEST IF THIS HAS NO PROBLEMS
    // await state.mapController.onReady;
    state.mapController.move(marker.location, 16.0);

    /// stored the last location touched to start at this point next time...
    await usPrefsWritter.setUserPreferences(
      UserPreferencesEntity(
        initialLat: marker.location.latitude,
        initialLng: marker.location.longitude,
      ),
    );
  }

  Future<void> savePosition(LatLng posx) async {
    /// stored the last location touched to start at this point next time...
    await usPrefsWritter.setUserPreferences(
      UserPreferencesEntity(
        initialLat: posx.latitude,
        initialLng: posx.longitude,
      ),
    );
  }

  Future<void> onErrorTile(dynamic error) async {
    emit(
      state.copyWith(
        failure: Failure.connection(
          message: error.toString(),
        ),
        loadingConfigs: false,
      ),
    );
  }

  Future<void> setMapMode(MapModeEntity mode) async {
    //
    final result = await usPrefsWritter.setUserPreferences(
      UserPreferencesEntity(mapMode: mode),
    );
    result.fold(
      (failure) => null,
      (_) => emit(state.copyWith(mapMode: mode)),
    );
  }
}
