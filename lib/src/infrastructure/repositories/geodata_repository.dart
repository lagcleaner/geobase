import 'package:dartz/dartz.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/repositories.dart';
import 'package:geobase/src/infrastructure/core/error_handling.dart';
import 'package:geobase/src/infrastructure/core/extensions/extensions.dart';
import 'package:geobase/src/infrastructure/providers/interfaces/interfaces.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IGeodataRepository)
class GeodataRepository implements IGeodataRepository {
  GeodataRepository({
    required this.provider,
  });

  final IGeodataProvider provider;

  @override
  Future<Either<Failure, int>> addGeodata(
    GeodataPostEntity geoData,
  ) async {
    try {
      final result = await provider.create(geoData.toModel());
      return Right(result);
    } catch (e) {
      return catchMethod(e);
    }
  }

  @override
  Future<Either<Failure, List<GeodataGetEntity>>> loadAllGeodata() async {
    try {
      final result = await provider.getAllOfType([]);
      return Right(result.map((e) => e.toEntity()).toList());
    } catch (e) {
      return catchMethod(e);
    }
  }

  @override
  Future<Either<Failure, GeodataGetEntity>> loadGeodataById(
    int geoDataId,
  ) async {
    try {
      final result = await provider.getById(geoDataId);
      return Right(result.toEntity());
    } catch (e) {
      return catchMethod(e);
    }
  }

  @override
  Future<Either<Failure, List<GeodataGetEntity>>> loadGeodataWhere(
    FilterDataOptionsEntity filters,
  ) async {
    try {
      if (filters.nearTo != null) {
        // TODO: implement
        throw UnimplementedError();
      }
      List<int>? ids;
      if (filters.ids?.isNotEmpty ?? false) {
        ids = filters.ids;
      }
      if (filters.categoryId != null) {
        ids = [filters.categoryId!];
      }
      final result = await provider.getAllOfType(ids ?? []);
      return Right(result.map((e) => e.toEntity()).toList());
    } catch (e) {
      return catchMethod(e);
    }
  }

  @override
  Future<Either<Failure, Unit>> removeGeodata(int geoDataId) async {
    try {
      await provider.getById(geoDataId);
      return const Right(unit);
    } catch (e) {
      return catchMethod(e);
    }
  }

  @override
  Future<Either<Failure, int>> editGeodata(
    GeodataPutEntity geoData,
  ) async {
    try {
      final result = await provider.edit(geoData.toModel());
      return Right(result);
    } catch (e) {
      return catchMethod(e);
    }
  }
}
