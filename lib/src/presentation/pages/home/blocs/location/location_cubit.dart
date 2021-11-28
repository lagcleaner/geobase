import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/services.dart';
import 'package:latlong2/latlong.dart';

part 'location_cubit.freezed.dart';
part 'location_state.dart';

@injectable
class LocationCubit extends Cubit<LocationState> {
  LocationCubit({
    required this.locationService,
  }) : super(const LocationState.disable()) {
    locationChangesSubscription = locationService.onLocationChanged
        .listen(__updateStateWithEitherLocation);
  }

  final ILocationReaderService locationService;

  StreamSubscription? locationChangesSubscription;

  @override
  Future<void> close() async {
    await locationChangesSubscription?.cancel();
    await super.close();
  }

  Future<void> enableLocation() async {
    if (state.maybeMap(
      enable: (_) => false,
      orElse: () => true,
    )) {
      emit(const LocationState.loading());
      await locationService.requestEnable();
      // Future.delayed(
      //   const Duration(seconds: 5),
      //   () => emit(const LocationState.disable()),
      // );
    }
  }

  Future<void> __updateStateWithEitherLocation(
    Either<Failure, LatLng> eiter,
  ) async =>
      eiter.fold(
        (failure) => emit(LocationState.disable(failure)),
        (location) => emit(LocationState.enable(location: location)),
      );
}
