import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geobase/src/domain/entities/configurations/user_preferences.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:latlong2/latlong.dart';

import 'package:geobase/src/domain/services/configurations/interfaces/i_user_preferences_reader.dart';
import 'package:geobase/src/domain/services/map/interfaces/i_location.dart';

part 'location_cubit.freezed.dart';
part 'location_state.dart';

class LocationCubit extends Cubit<LocationState> {
  final IUserPreferencesReaderService userPreferencesReaderService;
  final ILocationReaderService locationService;

  late StreamSubscription userPrefsChangesSubscription;
  StreamSubscription? locationChangesSubscription;

  LocationCubit(
    this.userPreferencesReaderService,
    this.locationService,
  ) : super(const LocationState.loading()) {
    _loadInitialState();
    userPrefsChangesSubscription = userPreferencesReaderService
        .onUserPrefChanged
        .listen(_updateStateWithEitherPrefs);
  }

  @override
  Future<void> close() async {
    await locationChangesSubscription?.cancel();
    await userPrefsChangesSubscription.cancel();
    await super.close();
  }

  Future<void> _loadInitialState() async {
    final either = await userPreferencesReaderService.loadUserPreferences();

    either.fold(
      (failure) => emit(LocationState.disable(failure)),
      _updateStateWithEitherPrefs,
    );
  }

  Future<void> _updateStateWithEitherPrefs(UserPreferences userPrefs) async {
    if (userPrefs.showLocation) {
      final result = await locationService.initialize(userPrefs.updateInterval);
      if (result.isLeft()) {
        final failure =
            result.swap().getOrElse(() => const Failure.unhandled());
        emit(LocationState.disable(failure));
        await _disableStreamLocation();
        return;
      }
      final eitherLocation = await locationService.currentLocation();
      await _updateLocationWithEither(eitherLocation);
      _enableStreamLocation();
    } else {
      emit(const LocationState.disable());
      await _disableStreamLocation();
    }
  }

  Future<void> _updateLocationWithEither(Either<Failure, LatLng> eiter) async =>
      eiter.fold(
        (failure) => emit(LocationState.disable(failure)),
        (location) => emit(LocationState.enable(location: location)),
      );

  void _enableStreamLocation() {
    locationChangesSubscription ??=
        locationService.onLocationChanged.listen(_updateLocationWithEither);
  }

  Future<void> _disableStreamLocation() async {
    await locationChangesSubscription?.cancel();
    locationChangesSubscription = null;
  }
}
