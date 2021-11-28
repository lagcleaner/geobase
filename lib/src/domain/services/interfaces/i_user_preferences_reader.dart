import 'package:dartz/dartz.dart';

import 'package:geobase/src/domain/entities/entities.dart';

abstract class IUserPreferencesReaderService {
  Future<Either<Failure, UserPreferencesEntity>> loadUserPreferences();
}
