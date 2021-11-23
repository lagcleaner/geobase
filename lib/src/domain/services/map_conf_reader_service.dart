import 'package:dartz/dartz.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/repositories.dart';
import 'package:geobase/src/domain/services/interfaces/interfaces.dart';

@LazySingleton(as: IMapConfigurationReaderService)
class MapConfigurationReaderService implements IMapConfigurationReaderService {
  MapConfigurationReaderService(
    this.repository,
  );

  final IConfigurationRepository repository;

  @override
  Future<Either<Failure, MapConfigurationEntity>>
      loadMapConfigurations() async {
    return repository.loadMapConfigurations();
  }
}
