import 'package:geobase/src/infrastructure/models/models.dart';

abstract class IFieldValueProvider {
  Future<List<FieldValueGetModel>> getAllFromGeodata(int geodataId);
  Future<FieldValueGetModel> getById(int id);
  Future<int> create(FieldValuePostModel model);
  Future<int> edit(FieldValuePutModel model);
  Future<void> remove(int id);
}
