import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:geobase/injection.dart';

import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/repositories.dart';
import 'package:geobase/src/infrastructure/core/changes_notifier_streamcontroller.dart';

@LazySingleton(as: IGeoDataFilterRepository)
class GeoDataFiltersRepository extends IGeoDataFilterRepository {
  GeoDataFiltersRepository() {
    _changesNotifier = ObjectChangeNotifier<FilterDataOptions>();
  }
  late final ObjectChangeNotifier<FilterDataOptions> _changesNotifier;

  @override
  Stream<FilterDataOptions> get onFiltersOptionsChanged =>
      _changesNotifier.stream;

  @override
  Future<Either<Failure, FilterDataOptions>> loadDefaultFilterOptions() async {
    return Right(FilterDataOptions.clean());
  }

  @override
  Future<Either<Failure, Unit>> setDefaultFilterOptions(
    FilterDataOptions filters,
  ) async {
    //TODO: Save in locals

    _changesNotifier.add(filters);
    return const Right(unit);
  }
}
