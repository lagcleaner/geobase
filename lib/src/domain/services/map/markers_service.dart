import 'package:dartz/dartz.dart';
import 'package:geobase/src/domain/entities/markers/marker_meta.dart';
import 'package:geobase/src/domain/services/map/interfaces/i_markers.dart';

import '../../../../injection.dart';
import '../../entities/failures/failures.dart';

@LazySingleton(as: IMarkerGetterService)
class GetMarkers implements IMarkerGetterService {
  GetMarkers();

  @override
  Future<Either<Failure, List<MarkerMeta>>> getMarkers() async {
    // TODO: automatic filter accordingly to saved FilterOptions
    // TODO: implement getMarkers
    return const Right([]);
  }
}
