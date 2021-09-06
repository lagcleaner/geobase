import 'package:dartz/dartz.dart';

import '../../../../injection.dart';
import '../../entities/configurations/source_configuration.dart';
import '../../entities/failures/failures.dart';

@lazySingleton
class LoadSourceConfiguration {
  const LoadSourceConfiguration();

  Future<Either<Failure, MapSourceConfiguration>> call() async {
    // wms
    return const Right(MapSourceConfiguration.wms(
      baseUrl: 'https://{s}.s2maps-tiles.eu/wms/?',
      layers: ['s2cloudless-2018_3857'],
      subdomains: ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h'],
    ));
  }
}
