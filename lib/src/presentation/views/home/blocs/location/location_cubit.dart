import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

import '../../../../../domain/entities/configurations/user_preferences.dart';
import '../../../../../domain/entities/entities.dart';
import '../../../../../domain/services/configurations/interfaces/i_user_preferences_reader.dart';
import '../../../../../domain/services/map/interfaces/i_location.dart';

part 'location_cubit.freezed.dart';
part 'location_state.dart';

class LocationCubit extends Cubit<LocationState> {
  final ILocationConfigurationChangedStreamerService
      locationConfigurationChangedStreamerService;

  final IUserPreferencesReaderService userPreferencesReaderService;

  final ILocationReaderService locationService;

  late StreamSubscription userPrefsChangesSubscription;
  StreamSubscription? locationChangesSubscription;

  LocationCubit({
    required this.locationConfigurationChangedStreamerService,
    required this.userPreferencesReaderService,
    required this.locationService,
  }) : super(const LocationState.loading()) {
    _loadInitialState();
    userPrefsChangesSubscription = locationConfigurationChangedStreamerService
        .onUserSwitchOnOrOffLocationChanged
        .listen(_handleNewPrefs);
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
      (prefs) => _handleNewPrefs(prefs.showLocation),
    );
  }

  Future<void> _handleNewPrefs(bool switchedOnOrOff) async {
    if (switchedOnOrOff) {
      final eitherLocation = await locationService.currentLocation();
      await __updateStateWithEitherLocation(eitherLocation);
      locationChangesSubscription ??= locationService.onLocationChanged
          .listen(__updateStateWithEitherLocation);
    } else {
      await locationChangesSubscription?.cancel();
      locationChangesSubscription = null;
      emit(const LocationState.disable());
    }
  }

  Future<void> __updateStateWithEitherLocation(
          Either<Failure, LatLng> eiter) async =>
      eiter.fold(
        (failure) => emit(LocationState.disable(failure)),
        (location) => emit(LocationState.enable(location: location)),
      );
}
