import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/interfaces/interfaces.dart';

part 'geodata_preview_cubit.freezed.dart';
part 'geodata_preview_state.dart';

@injectable
class GeodataPreviewCubit extends Cubit<GeodataPreviewState> {
  GeodataPreviewCubit(
    this.service,
  ) : super(const GeodataPreviewState.loading());

  final IGeodataService service;

  Future<void> load(int geodataId) async {
    final either = await service.loadGeodataById(geodataId);

    either.fold(
      (failure) => emit(GeodataPreviewState.failure(failure.message)),
      (geodata) => emit(GeodataPreviewState.loaded(geodata)),
    );
  }
}
