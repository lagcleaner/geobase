import 'package:dartz/dartz.dart';

import '../../../entities/entities.dart';

abstract class IMarkerGetterService {
  Future<Either<Failure, List<MarkerMeta>>> getMarkers();
}
