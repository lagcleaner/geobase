import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geobase/injection.dart';

import 'package:geobase/src/domain/core/enums/enums.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/services.dart';

part 'map_configuration_input_cubit.freezed.dart';
part 'map_configuration_input_state.dart';

@injectable
class MapConfigurationInputCubit extends Cubit<MapConfigurationInputState> {
  MapConfigurationInputCubit({
    required this.readerService,
    required this.writterService,
  }) : super(const MapConfigurationInputState.initial());

  final IMapConfigurationReaderService readerService;
  final IMapConfigurationWritterService writterService;

  Future<void> load() async {
    final eitherCurrentConfigs = await readerService.loadMapConfigurations();
    eitherCurrentConfigs.fold(
      (failure) => emit(
        MapConfigurationInputState.failureLoading(
          failure,
        ),
      ),
      (config) => emit(
        MapConfigurationInputState.configurationInput(
          selectedType: config.mapSourceType,
          config: config,
        ),
      ),
    );
  }

  Future<void> select(MapSource sourceType) async {
    final eitherCurrentConfigs = await readerService.loadMapConfigurations();
    eitherCurrentConfigs.fold(
      (failure) => emit(
        MapConfigurationInputState.failureLoading(
          failure,
        ),
      ),
      (config) => emit(
        MapConfigurationInputState.configurationInput(
          selectedType: sourceType,
          config: config.mapSourceType == sourceType ? config : null,
        ),
      ),
    );
  }

  Future<void> save(MapConfigurationEntity config) async {
    emit(const MapConfigurationInputState.initial());
    final eitherRsult = await writterService.setMapConfigurations(config);
    eitherRsult.fold(
      (failure) => emit(
        MapConfigurationInputState.failureSaving(
          failure: failure,
          config: config,
        ),
      ),
      (_) => emit(
        MapConfigurationInputState.configurationInput(
          selectedType: config.mapSourceType,
          config: config,
        ),
      ),
    );
  }
}
