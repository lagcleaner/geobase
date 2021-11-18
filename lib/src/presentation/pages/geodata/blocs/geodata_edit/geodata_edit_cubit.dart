import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/geodata/interfaces/i_geodata.dart';

part 'geodata_edit_cubit.freezed.dart';
part 'geodata_edit_state.dart';

class GeodataEditCubit extends Cubit<GeodataEditState> {
  GeodataEditCubit(
    this.service,
  ) : super(const GeodataEditState.initial());

  final IGeodataService service;

  Future<void> loadInputs(int dataId) async {
    final eitherData = await service.loadGeodataById(dataId);
    eitherData.fold(
      (failure) => emit(
        GeodataEditState.failure(failure: failure),
      ),
      (data) => emit(
        GeodataEditState.edit(
          fetchData: GeodataEditInitialData(
            data: data,
          ),
        ),
      ),
    );
  }
}

class GeodataEditInitialData {
  GeodataEditInitialData({
    required this.data,
  });

  final GeodataGetEntity data;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GeodataEditInitialData && other.data == data;
  }

  @override
  int get hashCode => data.hashCode;
}
