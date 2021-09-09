import 'package:dartz/dartz.dart';

import '../../../../injection.dart';
import '../../entities/entities.dart';
import '../services.dart';

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
