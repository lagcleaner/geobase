import 'package:dartz/dartz.dart';

import 'package:geobase/src/domain/entities/configurations/user_preferences.dart';
import 'package:geobase/src/domain/entities/failures/failures.dart';

abstract class IUserPreferencesLoaderService {
  Future<Either<Failure, UserPreferencesGetEntity>> loadUserPreferences();
}

abstract class IUserPreferencesChangesListenerService {
  Stream<UserPreferencesGetEntity> get onUserPrefChanged;
}

abstract class IUserPreferencesReaderService
    implements
        IUserPreferencesLoaderService,
        IUserPreferencesChangesListenerService {}
