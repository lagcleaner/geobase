import 'package:geobase/src/infrastructure/models/models.dart';

abstract class IFieldTypeStaticSelectionProvider {
  Future<List<FieldTypeStaticSelectionGetModel>> getAll();
  Future<FieldTypeStaticSelectionGetModel> getByFieldTypeId(int id);
  Future<int> create(FieldTypeStaticSelectionPostModel model);
  Future<void> remove(int id);
}
