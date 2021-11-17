import 'package:dartz/dartz.dart';

import 'package:geobase/src/domain/entities/entities.dart';

abstract class IMarkerGetterService {
  Future<Either<Failure, List<IMarkable>>> getMarkers([
    FilterDataOptionsEntity? filters,
  ]);
}
