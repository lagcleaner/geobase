import 'package:dartz/dartz.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/repositories.dart';
import 'package:geobase/src/domain/services/services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IGeodataFiltersOptionsService)
class GeodataFilterService implements IGeodataFiltersOptionsService {
  GeodataFilterService(
    this.filterRepository,
  );

  final IGeoDataFilterRepository filterRepository;

  @override
  Future<Either<Failure, FilterDataOptions>> loadFilterOptions() async {
    return filterRepository.loadDefaultFilterOptions();
  }

  @override
  Stream<FilterDataOptions> get onFiltersOptionsChanged =>
      filterRepository.onFiltersOptionsChanged;

  @override
  Future<Either<Failure, Unit>> setFilterOptions(
    FilterDataOptions filters,
  ) async {
    return filterRepository.setDefaultFilterOptions(filters);
  }
}
