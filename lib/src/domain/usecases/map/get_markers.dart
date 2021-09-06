import 'package:dartz/dartz.dart';

import '../../../../injection.dart';
import '../../../presentation/views/home/misc/markers/marker_meta.dart';
import '../../entities/failures/failures.dart';

@lazySingleton
class GetMarkers {
  GetMarkers();

  Future<Either<Failure, List<MarkerMeta>>> call() async {
    //todo: automatic filter accordingly to saved FilterOptions
    return const Right([]);
  }
}
