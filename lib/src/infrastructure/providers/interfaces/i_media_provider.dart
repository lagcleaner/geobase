import 'package:geobase/src/infrastructure/models/models.dart';

abstract class IFieldTypeMediaProvider {
  Future<List<FieldTypeMediaGetModel>> getAll();
  Future<FieldTypeMediaGetModel> getByFieldTypeId(int id);
  Future<int> create(FieldTypeMediaPostModel model);
  Future<void> remove(int id);
}
