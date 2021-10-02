import 'package:dartz/dartz.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/configurations/source_configuration.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/repositories.dart';
import 'package:geobase/src/domain/services/configurations/interfaces/i_map_source_conf_reader.dart';

@LazySingleton(as: IMapSourceConfigurationReaderService)
class MapSourceConfigurationReaderService
    implements IMapSourceConfigurationReaderService {
  MapSourceConfigurationReaderService(
    this.repository,
  );

  final IConfigurationRepository repository;

  @override
  Future<Either<Failure, MapSourceConfiguration>>
      loadMapSourceConfigurations() async {
    // wms
    return const Right(
      MapSourceConfiguration.wms(
        baseUrl: 'https://{s}.s2maps-tiles.eu/wms/?',
        layers: ['s2cloudless-2018_3857'],
        subdomains: ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h'],
      ),
    );
    // return repository.loadMapSourceConfigurations();
  }

  @override
  Stream<MapSourceConfiguration> get onSourceConfigChanged =>
      repository.onSourceConfigChanged;
}
