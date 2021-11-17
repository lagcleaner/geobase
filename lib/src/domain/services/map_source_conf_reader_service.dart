import 'package:dartz/dartz.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/repositories.dart';
import 'package:geobase/src/domain/services/interfaces/interfaces.dart';

@LazySingleton(as: IMapSourceConfigurationReaderService)
class MapSourceConfigurationReaderService
    implements IMapSourceConfigurationReaderService {
  MapSourceConfigurationReaderService(
    this.repository,
  );

  final IConfigurationRepository repository;

  @override
  Future<Either<Failure, MapSourceConfigurationEntity>>
      loadMapSourceConfigurations() async {
    // wms
    return Right(
      MapSourceConfigurationEntity.wms(
        baseUrl: 'https://{s}.s2maps-tiles.eu/wms/?',
        layers: ['s2cloudless-2018_3857'],
        subdomains: ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h'],
      ),
    );
    // return repository.loadMapSourceConfigurations();
  }
}
