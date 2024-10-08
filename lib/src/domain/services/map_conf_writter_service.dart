import 'package:dartz/dartz.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/repositories.dart';
import 'package:geobase/src/domain/services/interfaces/interfaces.dart';

@LazySingleton(as: IMapConfigurationWritterService)
class MapConfigurationWritterService
    implements IMapConfigurationWritterService {
  MapConfigurationWritterService(
    this.repository,
  );

  final IConfigurationRepository repository;

  @override
  Future<Either<Failure, Unit>> setMapConfigurations(
    MapConfigurationEntity configuration,
  ) async {
    return repository.setMapConfigurations(configuration);
  }
}
