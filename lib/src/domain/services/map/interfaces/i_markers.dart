import 'package:dartz/dartz.dart';

import '../../../entities/failures/failures.dart';
import '../../../entities/markers/marker_meta.dart';

abstract class IMarkerGetterService {
  Future<Either<Failure, List<MarkerMeta>>> getMarkers();
}
