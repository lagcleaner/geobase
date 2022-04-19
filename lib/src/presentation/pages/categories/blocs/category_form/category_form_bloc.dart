import 'dart:developer';
import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:geobase/src/domain/services/services.dart';
import 'package:geobase/src/presentation/core/utils/utils.dart';
import 'package:geobase/src/presentation/pages/categories/blocs/column/column_field_bloc.dart';

abstract class CategoryFormBloc extends FormBloc<Unit, String> {
  CategoryFormBloc({
    required this.categoryService,
    required this.fieldTypeService,
  }) {
    addFieldBlocs(
      fieldBlocs: [
        name,
        description,
        color,
        icon,
        columns,
      ],
    );
  }

  // fields
  final ICategoryService categoryService;

  final IFieldTypeService fieldTypeService;

  // fieldBlocs
  late final name = TextFieldBloc(
    asyncValidatorDebounceTime: const Duration(seconds: 1),
    asyncValidators: [categoryNameTakenAsyncValidator],
    validators: [
      StringValidator.required,
    ],
  );
  final TextFieldBloc description = TextFieldBloc();

  final InputFieldBloc<Color?, dynamic> color = InputFieldBloc(
    initialValue: null,
  );

  final InputFieldBloc<String?, dynamic> icon = InputFieldBloc(
    initialValue: null,
    validators: [
      StringValidator.required,
    ],
  );

  final ListFieldBloc<ColumnFieldBloc, dynamic> columns = ListFieldBloc();

  // validators

  Future<String?> categoryNameTakenAsyncValidator(String? value) async {
    if (value?.isEmpty ?? true) return null;
    final allCat = await categoryService.loadCategoriesWhere();
    return allCat.fold(
      (failure) => null,
      (categories) => categories.any(
        (element) => element.name.toLowerCase() == value?.toLowerCase(),
      )
          ? 'Ya existe otra categoría con este nombre'
          : null,
    );
  }

  String? columnNameTakenValidator(String? name) {
    if (name?.isEmpty ?? true) return null;
    return columns.state.fieldBlocs.any((e) => e.columnName.state.value == name)
        ? 'No puede haber columnas con igual nombre.'
        : null;
  }

  //actions
  Future<void> addNewColumn() async {
    final either = await fieldTypeService.loadAll();
    either.fold(
      (failure) {
        log(failure.toString());
        emitFailure(failureResponse: failure.toString());
      },
      (types) {
        columns.addFieldBloc(
          ColumnFieldBloc(
            columnName: TextFieldBloc(
              validators: [
                StringValidator.required,
                columnNameTakenValidator,
              ],
            ),
            type: SelectFieldBloc(
              items: types,
              validators: [
                DynamicValidator.required,
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> removeColumn(int index) async {
    columns.removeFieldBlocAt(index);
  }
}
