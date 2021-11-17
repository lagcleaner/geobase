import 'package:geobase/injection.dart';
import 'package:geobase/src/infrastructure/models/models.dart';
import 'package:geobase/src/infrastructure/providers/interfaces/i_field_type_provider.dart';
import 'package:geobase/src/infrastructure/providers/sqlite/db_model.dart';

@LazySingleton(as: IFieldTypeProvider)
class FieldTypeSQLiteProvider implements IFieldTypeProvider {
  @override
  Future<List<FieldTypeGetModel>> getAll() async {
    final fieldTypes = await FieldTypeDBModel().select().toList(preload: true);
    final result = <FieldTypeGetModel>[];
    for (final ft in fieldTypes) {
      result.add(await buildFieldTypeFromDBModel(ft));
    }
    return result;
  }

  @override
  Future<FieldTypeGetModel> getById(int id) async {
    final fieldType = await FieldTypeDBModel()
        .select()
        .field_type_id
        .equals(id)
        .toSingle(preload: true);
    return buildFieldTypeFromDBModel(fieldType!);
  }

  Future<FieldTypeGetModel> buildFieldTypeFromDBModel(
    FieldTypeDBModel type,
  ) async {
    //TODO: APPLY REFLECTABLE HERE TO REMOVE SWITCH
    switch (type.meta_type) {
      case StaticSelectionMetaTypeName:
        //TODO: COULD WORK APPLY REFLECTABLE TO OBTEIN THE COMPLEX TABLA TO MAKE A type.get<complex-type>DBModels().
        return type.getStaticSelectionDBModels()!.toSingle().then(
              (value) => FieldTypeGetModel(
                id: type.field_type_id!,
                name: type.name!,
                metaType: type.meta_type!,
                extradata: value?.toMap(),
              ),
            );
      case BaseMetaTypeName:
      default:
        return FieldTypeGetModel(
          id: type.field_type_id!,
          name: type.name!,
          metaType: BaseMetaTypeName,
        );
    }
  }
}
