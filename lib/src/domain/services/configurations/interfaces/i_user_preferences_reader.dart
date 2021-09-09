import 'package:dartz/dartz.dart';

import '../../../entities/configurations/user_preferences.dart';
import '../../../entities/failures/failures.dart';

abstract class IUserPreferencesLoaderService {
  Future<Either<Failure, UserPreferences>> loadUserPreferences();
}

abstract class IUserPreferencesChangesListenerService {
  Stream<UserPreferences> get onUserPrefChanged;
}

abstract class IUserPreferencesReaderService
    implements
        IUserPreferencesLoaderService,
        IUserPreferencesChangesListenerService {}
