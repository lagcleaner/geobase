import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/services.dart';

part 'geodataview_cubit.freezed.dart';
part 'geodataview_state.dart';

@injectable
class GeodataViewCubit extends Cubit<GeodataViewState> {
  GeodataViewCubit(
    this.dataService,
  ) : super(const GeodataViewState.fetchInProgress());

  final IGeodataService dataService;

  Future<void> fetch(int geodataId) async {
    emit(const GeodataViewState.fetchInProgress());
    final result = await dataService.loadGeodataById(geodataId);
    emit(
      result.fold(
        (error) => GeodataViewState.fetchFailure(error: error.toString()),
        (geodata) => GeodataViewState.fetchSuccess(geodata: geodata),
      ),
    );
  }

  Future<void> remove(int geodataId) async {
    await dataService.removeGeodata(geodataId);
  }
}
