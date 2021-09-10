import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../injection.dart';
import '../../../../../domain/entities/entities.dart';
import '../../../../../domain/services/services.dart';
import '../../../../core/app.dart';

part 'map_cubit.freezed.dart';
part 'map_state.dart';

@injectable
class MapCubit extends Cubit<MapState> {
  final IMapSourceConfigurationReaderService sourceConfReader;
  late StreamSubscription mapSourceConfChangesSubscription;

  MapCubit({
    required this.sourceConfReader,
  }) : super(MapState.state(
          mapController: MapController(),
          sourceConfiguration: const MapSourceConfiguration.empty(),
        )) {
    mapSourceConfChangesSubscription =
        sourceConfReader.onSourceConfigChanged.listen((sourceConf) {
      emit(state.copyWith(sourceConfiguration: sourceConf));
    });
  }

  @override
  Future<void> close() async {
    await mapSourceConfChangesSubscription.cancel();
    await super.close();
  }

  Stream<MapState> initialConfigurationsRequested() async* {
    yield state.copyWith(loadingConfigs: true);

    await Future.delayed(const Duration(seconds: 3));

    final result = await sourceConfReader.loadMapSourceConfigurations();
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

  Stream<MapState> markerTouched(IMarkable marker) async* {
    // make markerMeta and interface
    state.mapController.move(marker.point, state.mapController.zoom);
  }
}
