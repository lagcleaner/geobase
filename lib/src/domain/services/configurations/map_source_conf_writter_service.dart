import 'package:dartz/dartz.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/configurations/source_configuration.dart';
import 'package:geobase/src/domain/entities/failures/failures.dart';
import 'package:geobase/src/domain/services/configurations/interfaces/i_map_source_conf_writter.dart';

@LazySingleton(as: IMapSourceConfigurationWritterService)
class MapSourceConfigurationWritterService
    implements IMapSourceConfigurationWritterService {
  MapSourceConfigurationWritterService();

  @override
  Future<Either<Failure, Unit>> setMapSourceConfigurations(
    MapSourceConfiguration configuration,
  ) async {
    // TODO: implement setMapSourceConfigurations
    throw UnimplementedError();
  }
}
