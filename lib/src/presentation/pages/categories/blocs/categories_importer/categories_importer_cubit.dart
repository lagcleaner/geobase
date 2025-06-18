import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/services.dart';
import 'package:geobase/src/presentation/pages/categories/blocs/categories_importer/categories_importer_state.dart';

@injectable
class CategoriesImporterCubit extends Cubit<CategoriesImporterState> {

  CategoriesImporterCubit()
      : super(const CategoriesImporterState());

  Future<void> importFromJson() async {
    emit(state.copyWith(status: CategoryImporterStatus.loading, message: null));

    try {
      final result = await FilePicker.platform.pickFiles(
        dialogTitle: 'Selecciona el archivo de categorías',
        type: FileType.custom,
        allowedExtensions: ['json'],
      );

      if (result == null || result.files.single.path == null) {
        emit(state.copyWith(
          status: CategoryImporterStatus.error,
          message: 'No se seleccionó ningún archivo.',
        ));
        return;
      }

      // Obtención del json con las categorias serializadas
      final file = File(result.files.single.path!);
      final content = await file.readAsString();
      final jsonData = jsonDecode(content) as Map<String, dynamic>;

      // Por cada metatype (Form o Seleccion Estatica) retorna una lista con todos los nombres en el json
      final Map<String, List<String>> typeNames = extractTypedNamesFromJson(jsonData);

      // Servicios necesarios para crear y obtener las entidades
      final ICategoryService categoryService = getIt<ICategoryService>();
      final IFieldTypeFormService formService = getIt<IFieldTypeFormService>();
      final IFieldTypeStaticSelectionService staticselectionService = getIt<IFieldTypeStaticSelectionService>();

      // Cargar formularios y selecciones existentes desde la base de datos
      final formsResult = await formService.loadAll();
      final selectionsResult = await staticselectionService.loadAll();
      final existingForms = formsResult.getOrElse(() => []);
      final existingSelections = selectionsResult.getOrElse(() => []);

      if (existsInEntities<FieldTypeFormGetEntity>(existingForms,typeNames,'Form',(form)=> typeNames['Form']!.contains(form.name)) || existsInEntities<FieldTypeStaticSelectionGetEntity>(existingSelections,typeNames,'StaticSelection',(selection)=> typeNames['StaticSelection']!.contains(selection.name))) {
        emit(state.copyWith(
          status: CategoryImporterStatus.error,
          message: 'Existen tipos con los mismos nombres a importar.',
        ));
        return;
      }

      final rawCategories = jsonData['categories'] ?? [];
      for (Map<String,dynamic> category in rawCategories) {
        List<ColumnPostEntity> columns = [];
        for (Map<String, dynamic> column in category['columns']) {
          if (column['type']['metatype'] == 'Form') {
            FieldTypeFormPostEntity form = FieldTypeFormPostEntity.fromMap(column['type']['extradata'] as Map<String, dynamic>);
            final result = await formService.createForm(form);
            result.fold(
              (failure) {
                emit(state.copyWith(
                  status: CategoryImporterStatus.error,
                  message: 'Error al crear el formulario ${form.name}.',
                ));
                return;
              },
              (formId) {
                columns.add(ColumnPostEntity(name: column['name'] as String, typeId: formId));
              },
            );
          }
          else if (column['metatype'] == 'StaticSelection') {
            // TODO
            // Implementar deserializar e importar una seleccion estatica
            log('aun no implementado');
          }
          else {
            columns.add(ColumnPostEntity(
              name: column['name'] as String, 
              typeId: column['type']['id'] as int
            ));
          }
        }
        final id = await categoryService.createCategory(
          CategoryPostEntity(
            name: category['name'] as String, 
            description: category['description'] as String, 
            color: category['color'] as int?, 
            icon: category['icon'] as String, 
            columns: columns));
        log('Se creo la cat $id');
      }

      // 🔄 Obtener categorías existentes desde la base de datos
      final resultDB = await categoryService.loadCategoriesWhere();

      resultDB.fold(
        (error) {
          emit(state.copyWith(
            status: CategoryImporterStatus.error,
            message: 'Error al cargar categorías existentes: ${error.message}',
          ));
        },
        (existingCategories) {
          // 🟢 Emitir nuevo estado con ambas listas
          emit(state.copyWith(
            status: CategoryImporterStatus.success,
            categories: existingCategories,
          ));
        },
      );
    } catch (e) {
      emit(state.copyWith(
        status: CategoryImporterStatus.error,
        message: 'Error al importar categorías: ${e.toString()}',
      ));
    }
  }

  Map<String, List<String>> extractTypedNamesFromJson(Map<String, dynamic> json) {
    final Map<String, Set<String>> result = {};

    final categories = json['categories'] as List<dynamic>? ?? [];

    for (final category in categories) {
      final columns = (category as Map<String, dynamic>)['columns'] as List<dynamic>? ?? [];

      for (final column in columns) {
        final columnMap = column as Map<String, dynamic>;
        final type = columnMap['type'] as Map<String, dynamic>?;

        if (type != null) {
          final metaType = type['metatype'] as String?;
          final name = type['name'] as String?;

          if (metaType != null && name != null) {
            result.putIfAbsent(metaType, () => {}).add(name);
          }
        }
      }
    }

    // Convert Set to List before returning
    return result.map((key, value) => MapEntry(key, value.toList()));
  }

  bool existsInEntities<T>(
    List<T> existingEntities,
    Map<String, List<String>> extractedMap,
    String type,
    bool Function(T entity) predicate,
  ) {
    final namesToCheck = extractedMap[type] ?? [];

    for (final _ in namesToCheck) {
      final found = existingEntities.any((e) => predicate(e));
      if (found) return true;
    }

    return false;
  }

}
