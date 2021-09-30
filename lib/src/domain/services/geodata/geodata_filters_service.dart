import 'package:dartz/dartz.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IGeodataFiltersOptionsService)
class GeodataFilterService implements IGeodataFiltersOptionsService {
  GeodataFilterService();

  @override
  Future<Either<Failure, FilterDataOptions>> loadFilterOptions() {
    // TODO: implement loadFilterOptions
    throw UnimplementedError();
  }

  @override
  // TODO: implement onFiltersOptionsChanged
  Stream<FilterDataOptions> get onFiltersOptionsChanged =>
      throw UnimplementedError();

  @override
  Future<Either<Failure, Unit>> setFilterOptions(FilterDataOptions filters) {
    // TODO: implement setFilterOptions
    throw UnimplementedError();
  }
}
