import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geobase/injection.dart';

import 'package:geobase/src/domain/core/enums/enums.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/services.dart';

part 'map_source_input_cubit.freezed.dart';
part 'map_source_input_state.dart';

@injectable
class MapSourceInputCubit extends Cubit<MapSourceInputState> {
  MapSourceInputCubit({
    required this.readerService,
    required this.writterService,
  }) : super(const MapSourceInputState.initial());

  final IMapSourceConfigurationReaderService readerService;
  final IMapSourceConfigurationWritterService writterService;

  Future<void> load() async {
    final eitherCurrentConfigs =
        await readerService.loadMapSourceConfigurations();
    eitherCurrentConfigs.fold(
      (failure) => emit(
        MapSourceInputState.failureLoading(
          failure,
        ),
      ),
      (source) => emit(
        MapSourceInputState.sourceInput(
          selectedType: source.mapSourceType,
          source: source,
        ),
      ),
    );
  }

  Future<void> select(MapSource sourceType) async {
    final eitherCurrentConfigs =
        await readerService.loadMapSourceConfigurations();
    eitherCurrentConfigs.fold(
      (failure) => emit(
        MapSourceInputState.failureLoading(
          failure,
        ),
      ),
      (source) => emit(
        MapSourceInputState.sourceInput(
          selectedType: sourceType,
          source: source.mapSourceType == sourceType ? source : null,
        ),
      ),
    );
  }

  Future<void> save(MapSourceConfiguration source) async {
    emit(const MapSourceInputState.initial());
    final eitherRsult = await writterService.setMapSourceConfigurations(source);
    eitherRsult.fold(
      (failure) => emit(
        MapSourceInputState.failureSaving(
          failure: failure,
          source: source,
        ),
      ),
      (_) => emit(
        MapSourceInputState.sourceInput(
          selectedType: source.mapSourceType,
          source: source,
        ),
      ),
    );
  }
}
