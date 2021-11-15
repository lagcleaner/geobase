import 'package:geobase/src/infrastructure/models/models.dart';

abstract class IGeodataProvider {
  Future<List<GeodataGetModel>> getAllOfType(List<int> categoryIds);
  Future<GeodataGetModel> getById(int id);
  Future<int> create(GeodataPostModel model);
  Future<int> edit(GeodataPutModel model);
  Future<void> remove(int id);
}
