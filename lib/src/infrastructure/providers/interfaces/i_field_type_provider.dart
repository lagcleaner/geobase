import 'package:geobase/src/infrastructure/models/models.dart';

abstract class IFieldTypeProvider {
  Future<List<FieldTypeGetModel>> getAll();
  Future<FieldTypeGetModel> getById(int id);
}
