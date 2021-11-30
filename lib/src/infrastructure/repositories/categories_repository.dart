import 'package:dartz/dartz.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/repositories/repositories.dart';
import 'package:geobase/src/infrastructure/core/error_handling.dart';
import 'package:geobase/src/infrastructure/core/extensions/extensions.dart';
import 'package:geobase/src/infrastructure/models/category_get_model.dart';
import 'package:geobase/src/infrastructure/providers/interfaces/interfaces.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ICategoriesRepository)
class CategoriesRepository implements ICategoriesRepository {
  CategoriesRepository({
    required this.provider,
  });

  final ICategoriesProvider provider;

  @override
  Future<Either<Failure, int>> addCategory(
    CategoryPostEntity newCategory,
  ) async {
    try {
      final response = await provider.create(newCategory.toModel());
      return Right(response);
    } catch (e) {
      return catchMethod(e);
    }
  }

  @override
  Future<Either<Failure, int>> editCategory(
    CategoryPutEntity category,
  ) async {
    try {
      final response = await provider.edit(category.toModel());
      return Right(response);
    } catch (e) {
      return catchMethod(e);
    }
  }

  @override
  Future<Either<Failure, CategoryGetEntity>> getCategory(int categoryId) async {
    try {
      final response = await provider.getById(categoryId);
      return Right(response.toEntity());
    } catch (e) {
      return catchMethod(e);
    }
  }

  @override
  Future<Either<Failure, Unit>> removeCategory(int categoryId) async {
    try {
      await provider.remove(categoryId);
      return const Right(unit);
    } catch (e) {
      return catchMethod(e);
    }
  }

  @override
  Future<Either<Failure, List<CategoryGetEntity>>> loadCategoriesWhere([
    FilterCategoriesOptionsEntity? filters,
  ]) async {
    try {
      List<CategoryGetModel> response;
      if (filters != null) {
        if ((filters.nameSubstring ?? '') != '') {
          response = await provider.getByNameSubstring(filters.nameSubstring!);
        } else {
          // TODO: implement
          throw UnimplementedError();
        }
      } else {
        response = await provider.getAll();
      }

      return Right(response.map((e) => e.toEntity()).toList());
    } catch (e) {
      return catchMethod(e);
    }
  }
}
