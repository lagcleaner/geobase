import 'package:dartz/dartz.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/configurations/source_configuration.dart';
import 'package:geobase/src/domain/entities/failures/failures.dart';
import 'package:geobase/src/domain/services/configurations/interfaces/i_map_source_conf_reader.dart';

@LazySingleton(as: IMapSourceConfigurationReaderService)
class MapSourceConfigurationReaderService
    implements IMapSourceConfigurationReaderService {
  MapSourceConfigurationReaderService();

  @override
  Future<Either<Failure, MapSourceConfiguration>>
      loadMapSourceConfigurations() async {
    // TODO: implement loadMapSourceConfigurations
    // wms
    return const Right(
      MapSourceConfiguration.wms(
        baseUrl: 'https://{s}.s2maps-tiles.eu/wms/?',
        layers: ['s2cloudless-2018_3857'],
        subdomains: ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h'],
      ),
    );
  }

  @override
  // TODO: implement onSourceConfigChanged
  Stream<MapSourceConfiguration> get onSourceConfigChanged =>
      throw UnimplementedError();
}
