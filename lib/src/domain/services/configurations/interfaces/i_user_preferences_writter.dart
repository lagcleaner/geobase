import 'package:dartz/dartz.dart';

import '../../../entities/configurations/user_preferences.dart';
import '../../../entities/failures/failures.dart';

abstract class IUserPreferencesWritterService {
  Future<Either<Failure, Unit>> setUserPreferences(
    UserPreferences preferences,
  );
}
