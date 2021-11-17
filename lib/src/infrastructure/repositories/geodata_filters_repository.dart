import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:geobase/injection.dart';

import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/repositories.dart';
import 'package:geobase/src/infrastructure/core/changes_notifier_streamcontroller.dart';

@LazySingleton(as: IGeodataFilterRepository)
class GeodataFiltersRepository extends IGeodataFilterRepository {
  GeodataFiltersRepository() {
    _changesNotifier = ObjectChangeNotifier<FilterDataOptionsEntity>();
  }
  late final ObjectChangeNotifier<FilterDataOptionsEntity> _changesNotifier;

  @override
  Stream<FilterDataOptionsEntity> get onFiltersOptionsChanged =>
      _changesNotifier.stream;

  @override
  Future<Either<Failure, FilterDataOptionsEntity>>
      loadDefaultFilterOptions() async {
    return Right(FilterDataOptionsEntity.clean());
  }

  @override
  Future<Either<Failure, Unit>> setDefaultFilterOptions(
    FilterDataOptionsEntity filters,
  ) async {
    //TODO: Save in locals

    _changesNotifier.add(filters);
    return const Right(unit);
  }
}
