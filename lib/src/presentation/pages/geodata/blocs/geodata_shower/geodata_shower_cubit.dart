import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/geodata/interfaces/i_geodata.dart';

part 'geodata_shower_cubit.freezed.dart';
part 'geodata_shower_state.dart';

class GeodataShowerCubit extends Cubit<GeodataShowerState> {
  GeodataShowerCubit(
    this.service,
  ) : super(const GeodataShowerState.initial());

  final IGeodataService service;
  Future<void> loadGeodata(int categoryId) async {
    final geodataListEither = await service.loadGeodataWhere(
      FilterDataOptions(categoryId: categoryId),
    );
    geodataListEither.fold(
      (l) => emit(GeodataShowerState.failure(message: l.message)),
      (r) => emit(GeodataShowerState.state(geodataList: r)),
    );
  }
}
