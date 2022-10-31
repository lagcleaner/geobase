import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/utils/utils.dart';
import 'package:geobase/src/presentation/pages/categories/blocs/category_form/category_form_bloc.dart';
import 'package:geobase/src/presentation/pages/categories/blocs/column/column_field_bloc.dart';

@injectable
class CategoryEditFormBloc extends CategoryFormBloc {
  CategoryEditFormBloc({
    // ignore: tighten_type_of_initializing_formals
    @factoryParam this.categoryId,
    required super.categoryService,
    required super.fieldTypeService,
  }) : assert(categoryId != null);

  final int? categoryId;

  bool? _hasRelatedData;

  Future<bool> get hasRelatedData async {
    if (_hasRelatedData != null) return _hasRelatedData!;
    if (categoryId == null) return false;
    final eitherData = await categoryService.hasRelatedData(categoryId!);
    return _hasRelatedData = eitherData.getOrElse(() => false);
  }

  Future<CategoryGetEntity?> get dfltEntity async {
    if (categoryId == null) return null;
    final eitherCategory = await categoryService.getCategory(categoryId!);
    return eitherCategory.foldRight(null, (r, _) => r);
  }

  @override
  Future<void> addNewColumn() async {
    if (await hasRelatedData) {
      emitLoading();
      emitFailure(
        failureResponse:
            'No puede adicionar columnas, hay datos vinculados a esta categoría.',
      );
      return;
    }
    await super.addNewColumn();
  }

  @override
  Future<void> removeColumn(int index) async {
    if (await hasRelatedData) {
      emitLoading();
      emitFailure(
        failureResponse:
            'No puede eliminar columnas, hay datos vinculados a esta categoría.',
      );
      return;
    }
    await super.removeColumn(index);
  }

  @override
  Future<void> onLoading() async {
    //
    final fieldTypes = await hasRelatedData
        ? null
        : (await fieldTypeService.loadAll())
            .foldRight(<FieldTypeGetEntity>[], (r, empty) => r);
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
        description.updateInitialValue(category.description??'');
        for (final col in category.columns) {
          columns.addFieldBloc(
            ColumnFieldBloc(
              column: col,
              columnName: TextFieldBloc(
                initialValue: col.name,
                validators: [
                  StringValidator.required,
                  columnNameTakenValidator,
                ],
              ),
              type: SelectFieldBloc(
                items: fieldTypes
                        ?.map((e) => e.id == col.type.id ? col.type : e)
                        .toList() ??
                    [col.type],
                initialValue: col.type,
                validators: (await hasRelatedData)
                    ? [
                        DynamicValidator.required,
                        typeNotEditableValidator(col.type)
                      ]
                    : [DynamicValidator.required],
              ),
            ),
          );
        }
        emitLoaded();
      },
    );
  }

  String? Function(FieldTypeGetEntity?) typeNotEditableValidator(
    FieldTypeGetEntity? fixedType,
  ) {
    return (newType) =>
        fixedType?.id != newType?.id ? 'El tipo no es editable' : null;
  }

  @override
  Future<String?> categoryNameTakenAsyncValidator(String? name) async {
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
    final prevCategory = await dfltEntity;
    final response = await categoryService.editCategory(
      CategoryPutEntity(
        id: categoryId!,
        name: name.state.value,
        color: color.state.value?.value,
        description: description.state.value,
        icon: icon.state.value!,
        editedColumns: columns.value
            .where((e) => e.column != null)
            .map(
              (e) => ColumnPutEntity(
                name: e.columnName.value,
                typeId: e.type.value!.id,
                categoryId: e.column!.categoryId,
                id: e.column!.id,
              ),
            )
            .toList(),
        newColumns: columns.value
            .where((e) => e.column == null)
            .map(
              (e) => ColumnPostEntity(
                name: e.columnName.value,
                typeId: e.type.value!.id,
                categoryId: categoryId,
              ),
            )
            .toList(),
        removedColumns: prevCategory!.columns
            .map((e) => e.id)
            .where((id) => !columns.value.any((fld) => fld.column?.id == id))
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
