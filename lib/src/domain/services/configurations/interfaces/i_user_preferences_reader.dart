import 'package:dartz/dartz.dart';

import 'package:geobase/src/domain/entities/configurations/user_preferences.dart';
import 'package:geobase/src/domain/entities/failures/failures.dart';

abstract class IUserPreferencesReaderService {
  Future<Either<Failure, UserPreferencesGetEntity>> loadUserPreferences();
  Stream<UserPreferencesGetEntity> get onUserPrefChanged;
}
