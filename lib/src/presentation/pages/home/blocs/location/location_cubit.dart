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
    required this.userPreferencesReaderService,
    required this.userPreferencesWritterService,
    required this.locationService,
  }) : super(const LocationState.loading()) {
    _loadInitialState();
  }

  final IUserPreferencesReaderService userPreferencesReaderService;
  final IUserPreferencesWritterService userPreferencesWritterService;
  final ILocationReaderService locationService;

  StreamSubscription? locationChangesSubscription;

  @override
  Future<void> close() async {
    await locationChangesSubscription?.cancel();
    await super.close();
  }

  Future<void> reload() async {
    await locationChangesSubscription?.cancel();
    await _loadInitialState();
  }

  Future<void> enableLocation() async {
    await state.maybeMap(
      disable: (disable) async {
        if (disable.failureAtTrying != null) return;
        await userPreferencesWritterService.setUserPreferences(
          const UserPreferencesEntity(showLocation: true),
        );
      },
      orElse: () async {},
    );
    await Future.delayed(const Duration(seconds: 1), _loadInitialState);
  }

  Future<void> disableLocation() async {
    await state.maybeMap(
      enable: (enable) async {
        await userPreferencesWritterService.setUserPreferences(
          const UserPreferencesEntity(showLocation: false),
        );
      },
      orElse: () async {},
    );
    await Future.delayed(const Duration(seconds: 1), _loadInitialState);
  }

  Future<void> _loadInitialState() async {
    final either = await userPreferencesReaderService.loadUserPreferences();

    await either.fold(
      (failure) async => emit(LocationState.disable(failure)),
      (prefs) async {
        if (prefs.showLocation) {
          final eitherLocation = await locationService.currentLocation();
          await __updateStateWithEitherLocation(eitherLocation);
          locationChangesSubscription ??= locationService.onLocationChanged
              .listen(__updateStateWithEitherLocation);
        } else {
          await locationChangesSubscription?.cancel();
          locationChangesSubscription = null;
          emit(const LocationState.disable());
        }
      },
    );
  }

  Future<void> __updateStateWithEitherLocation(
    Either<Failure, LatLng> eiter,
  ) async =>
      eiter.fold(
        (failure) => emit(LocationState.disable(failure)),
        (location) => emit(LocationState.enable(location: location)),
      );
}
