import 'package:dartz/dartz.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/repositories.dart';
import 'package:geobase/src/domain/services/configurations/interfaces/i_map_source_conf_writter.dart';

@LazySingleton(as: IMapSourceConfigurationWritterService)
class MapSourceConfigurationWritterService
    implements IMapSourceConfigurationWritterService {
  MapSourceConfigurationWritterService(
    this.repository,
  );

  final IConfigurationRepository repository;

  @override
  Future<Either<Failure, Unit>> setMapSourceConfigurations(
    MapSourceConfiguration configuration,
  ) async {
    return repository.setMapSourceConfigurations(configuration);
  }
}
