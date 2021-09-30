import 'package:dartz/dartz.dart';

import 'package:geobase/src/domain/entities/configurations/user_preferences.dart';
import 'package:geobase/src/domain/entities/failures/failures.dart';
import 'package:geobase/src/domain/services/services.dart';

class UserPreferencesReaderService implements IUserPreferencesReaderService {
  @override
  Future<Either<Failure, UserPreferencesGetEntity>> loadUserPreferences() {
    // TODO: implement loadUserPreferences
    throw UnimplementedError();
  }

  @override
  // TODO: implement onUserPrefChanged
  Stream<UserPreferencesGetEntity> get onUserPrefChanged =>
      throw UnimplementedError();
}
