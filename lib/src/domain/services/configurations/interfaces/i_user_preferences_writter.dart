import 'package:dartz/dartz.dart';

import 'package:geobase/src/domain/entities/configurations/user_preferences.dart';
import 'package:geobase/src/domain/entities/failures/failures.dart';

abstract class IUserPreferencesWritterService {
  Future<Either<Failure, Unit>> setUserPreferences(
    UserPreferencesUpdateEntity preferences,
  );
  Future<Either<Failure, Unit>> changeRefreshInterval(Duration refreshInterval);
}
