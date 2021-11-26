import 'package:geobase/injection.dart';
import 'package:geobase/src/infrastructure/models/models.dart';

import 'package:geobase/src/infrastructure/providers/interfaces/i_geodata_provider.dart';
import 'package:geobase/src/infrastructure/providers/interfaces/interfaces.dart';
import 'package:geobase/src/infrastructure/providers/sqlite/db_model.dart';

@LazySingleton(as: IGeodataProvider)
class GeodataSQLiteProvider implements IGeodataProvider {
  @override
  Future<int> create(GeodataPostModel model) async {
    try {
      final geodataId = await GeodataDBModel.withFields(
        model.longitude,
        model.latitude,
        model.categoryId,
      ).save();
      if (geodataId == null) throw Exception('Create Geodata Denied');
      for (final fv in model.fieldValues) {
        await getIt<IFieldValueProvider>().create(
          FieldValuePostModel(
            columnId: fv.columnId,
            geodataId: geodataId,
            value: fv.value,
          ),
        );
      }
      return geodataId;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<int> edit(GeodataPutModel model) async {
    try {
      final geodataId = await GeodataDBModel.withId(
        model.id,
        model.longitude,
        model.latitude,
        model.categoryId,
      ).save();
      if (geodataId == null) throw Exception('Edit Geodata Denied');
      for (final fv in model.fieldValues) {
        await getIt<IFieldValueProvider>().edit(fv);
      }
      return geodataId;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<GeodataGetModel>> getAllOfType(List<int> categoryIds) async {
    late List<GeodataDBModel> geodataList;
    if (categoryIds.isEmpty) {
      geodataList = await GeodataDBModel().select().toList();
    } else {
      geodataList = await GeodataDBModel()
          .select()
          .category_id
          .inValues(categoryIds)
          .toList();
    }
    final result = <GeodataGetModel>[];
    for (final geod in geodataList) {
      final category =
          await getIt<ICategoriesProvider>().getById(geod.category_id!);
      result.add(
        GeodataGetModel(
          id: geod.geodata_id!,
          latitude: geod.latitude!,
          longitude: geod.longitude!,
          materialIconCodePoint: category.icon,
          color: category.color,
          category: category,
          fields: await getIt<IFieldValueProvider>()
              .getAllFromGeodata(geod.geodata_id!),
        ),
      );
    }
    return result;
  }

  @override
  Future<GeodataGetModel> getById(int id) async {
    final geodata =
        await GeodataDBModel().select().geodata_id.equals(id).toSingle();
    if (geodata == null) throw Exception('Geodata Not Found');
    final category =
        await getIt<ICategoriesProvider>().getById(geodata.category_id!);
    return GeodataGetModel(
      latitude: geodata.latitude!,
      longitude: geodata.longitude!,
      id: id,
      materialIconCodePoint: category.icon,
      color: category.color,
      category: category,
      fields: await getIt<IFieldValueProvider>().getAllFromGeodata(id),
    );
  }

  @override
  Future<void> remove(int id) async {
    final result =
        await GeodataDBModel().select().geodata_id.equals(id).delete();
    if (result.errorMessage?.isNotEmpty ?? false) {
      throw Exception(result.errorMessage);
    }
  }
}
