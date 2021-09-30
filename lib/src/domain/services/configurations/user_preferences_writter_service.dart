import 'package:dartz/dartz.dart';
import 'package:geobase/injection.dart';

import 'package:geobase/src/domain/entities/configurations/user_preferences.dart';
import 'package:geobase/src/domain/entities/failures/failures.dart';
import 'package:geobase/src/domain/services/services.dart';

@LazySingleton(as: IUserPreferencesWritterService)
class UserPreferencesReaderService implements IUserPreferencesWritterService {
  @override
  Future<Either<Failure, Unit>> setUserPreferences(
    UserPreferencesUpdateEntity preferences,
  ) {
    // TODO: implement setUserPreferences
    throw UnimplementedError();
  }
}
