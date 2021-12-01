import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/interfaces/interfaces.dart';
import 'package:geobase/src/presentation/core/utils/utils.dart';
import 'package:geobase/src/presentation/pages/categories/blocs/category_form/category_create_form_bloc.dart';
import 'package:geobase/src/presentation/pages/categories/blocs/column/column_field_bloc.dart';

@injectable
class CategoryEditFormBloc extends CategoryCreateFormBloc {
  CategoryEditFormBloc({
    @factoryParam this.categoryId,
    required ICategoryService categoryService,
    required IFieldTypeService fieldTypeService,
  }) : super(
          categoryService: categoryService,
          fieldTypeService: fieldTypeService,
        );

  final int? categoryId;

  @override
  Future<void> onLoading() async {
    //
    final eitherValue = await categoryService.getCategory(categoryId!);
    await eitherValue.fold(
      (failure) async {
        emitFailure(failureResponse: failure.message);
      },
      (category) async {
        name.updateInitialValue(category.name);
        if (category.color != null) {
          color.updateInitialValue(Color(category.color!));
        }
        icon.updateInitialValue(category.icon);
        description.updateInitialValue(category.description);
        for (final col in category.columns) {
          columns.addFieldBloc(
            ColumnFieldBloc(
              column: col,
              columnName: TextFieldBloc(
                initialValue: col.name,
                validators: [
                  StringValidator.required,
                  columnNameIsTaken,
                ],
              ),
              type: SelectFieldBloc(
                items: [col.type],
                initialValue: col.type,
                validators: [
                  DynamicValidator.required,
                  _typeNotEditable(col.type)
                ],
              ),
            ),
          );
        }
        emitLoaded();
      },
    );
  }

  String? Function(FieldTypeGetEntity?) _typeNotEditable(
    FieldTypeGetEntity? fixedType,
  ) {
    return (newType) =>
        fixedType?.id != newType?.id ? 'El tipo no es editable' : null;
  }

  @override
  Future<String?> nameIsTaken(String? name) async {
    if (name?.isEmpty ?? true) return null;
    final allCat = await categoryService.loadCategoriesWhere();
    return allCat.fold(
      (failure) => null,
      (categories) => categories.any(
        (element) => element.name == name && categoryId != element.id,
      )
          ? 'Ya existe otra categoría con este nombre'
          : null,
    );
  }

  @override
  Future<void> onSubmitting() async {
    final response = await categoryService.editCategory(
      CategoryPutEntity(
        id: categoryId!,
        name: name.state.value!,
        color: color.state.value?.value,
        description: description.state.value,
        icon: icon.state.value!,
        columns: columns.value
            .map(
              (e) => ColumnPutEntity(
                name: e.columnName.value!,
                typeId: e.type.value!.id,
                categoryId: e.column!.categoryId,
                id: e.column!.id,
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
