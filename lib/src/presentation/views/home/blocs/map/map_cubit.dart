import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/services.dart';
import 'package:geobase/src/presentation/core/app.dart';

part 'map_cubit.freezed.dart';
part 'map_state.dart';

@injectable
class MapCubit extends Cubit<MapState> {
  MapCubit({
    required this.sourceConfReader,
  }) : super(
          MapState.state(
            mapController: MapController(),
            sourceConfiguration: const MapSourceConfiguration.empty(),
          ),
        ) {
    mapSourceConfChangesSubscription =
        sourceConfReader.onSourceConfigChanged.listen((sourceConf) {
      emit(state.copyWith(sourceConfiguration: sourceConf));
    });
  }

  final IMapSourceConfigurationReaderService sourceConfReader;
  late StreamSubscription mapSourceConfChangesSubscription;

  @override
  Future<void> close() async {
    await mapSourceConfChangesSubscription.cancel();
    await super.close();
  }

  Future<void> initialConfigurationsRequested() async {
    emit(state.copyWith(loadingConfigs: true));

    await Future.delayed(const Duration(seconds: 3));

    final result = await sourceConfReader.loadMapSourceConfigurations();
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
            sourceConfiguration: entity,
            loadingConfigs: false,
          ),
        );
      },
    );
  }

  Future<void> markerTouched(IMarkable marker) async {
    state.mapController.move(marker.point, state.mapController.zoom);
  }
}
