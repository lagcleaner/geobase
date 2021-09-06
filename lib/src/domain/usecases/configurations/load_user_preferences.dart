import 'package:dartz/dartz.dart';

import '../../../../injection.dart';
import '../../entities/configurations/user_preferences.dart';
import '../../entities/failures/failures.dart';

@lazySingleton
class LoadUserPreferences {
  LoadUserPreferences();

  Future<Either<Failure, UserPreferences>> call() async {
    return Right(UserPreferences());
  }
}
