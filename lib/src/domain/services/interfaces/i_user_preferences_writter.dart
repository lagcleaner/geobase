import 'package:dartz/dartz.dart';
import 'package:geobase/src/domain/entities/entities.dart';

abstract class IUserPreferencesWritterService {
  Future<Either<Failure, Unit>> setUserPreferences(
    UserPreferencesEntity preferences,
  );
}
