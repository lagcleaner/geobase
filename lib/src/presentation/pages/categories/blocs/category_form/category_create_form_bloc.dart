import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/services.dart';
import 'package:geobase/src/presentation/core/utils/input_validators.dart';
import 'package:geobase/src/presentation/pages/categories/blocs/column/column_field_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class CategoryCreateFormBloc extends FormBloc<Unit, String> {
  CategoryCreateFormBloc({
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

  late final name = TextFieldBloc(
    asyncValidatorDebounceTime: const Duration(seconds: 1),
    asyncValidators: [nameIsTaken],
    validators: [
      StringValidator.required,
    ],
  );

  final TextFieldBloc description = TextFieldBloc();

  final InputFieldBloc<Color?, dynamic> color = InputFieldBloc();

  final InputFieldBloc<String, dynamic> icon = InputFieldBloc(
    validators: [
      StringValidator.required,
    ],
  );

  final ListFieldBloc<ColumnFieldBloc> columns = ListFieldBloc();

  final ICategoryService categoryService;

  final IFieldTypeService fieldTypeService;

  Future<String?> nameIsTaken(String? name) async {
    if (name?.isEmpty ?? true) return null;
    final allCat = await categoryService.loadCategoriesWhere();
    return allCat.fold(
      (failure) => null,
      (categories) => categories.any(
        (element) => element.name.toLowerCase() == name?.toLowerCase(),
      )
          ? 'Ya existe otra categoría con este nombre'
          : null,
    );
  }

  String? columnNameIsTaken(String? name) {
    if (name?.isEmpty ?? true) return null;
    return columns.state.fieldBlocs.any((e) => e.columnName.state.value == name)
        ? 'No puede haber columnas con igual nombre.'
        : null;
  }

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
                columnNameIsTaken,
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

  void removeColumn(int index) {
    columns.removeFieldBlocAt(index);
  }

  @override
  Future<void> onSubmitting() async {
    final response = await categoryService.createCategory(
      CategoryPostEntity(
        name: name.state.value!,
        color: color.state.value?.value,
        description: description.state.value,
        icon: icon.state.value!,
        columns: columns.value
            .map(
              (e) => ColumnPostEntity(
                name: e.columnName.value!,
                typeId: e.type.value!.id,
              ),
            )
            .toList(),
      ),
    );
    return response.fold(
      (failure) => emitFailure(
        failureResponse: failure.message,
      ),
      (_) => emitSuccess(
        successResponse: unit,
      ),
    );
  }
}
