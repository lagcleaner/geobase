import 'package:dartz/dartz.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/services.dart';
import 'package:geobase/src/presentation/pages/categories/blocs/category_form/category_form_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class CategoryCreateFormBloc extends CategoryFormBloc {
  CategoryCreateFormBloc({
    required ICategoryService categoryService,
    required IFieldTypeService fieldTypeService,
  }) : super(
          categoryService: categoryService,
          fieldTypeService: fieldTypeService,
        );

  @override
  Future<void> onSubmitting() async {
    final response = await categoryService.createCategory(
      CategoryPostEntity(
        name: name.state.value,
        color: color.state.value?.value,
        description: description.state.value,
        icon: icon.state.value!,
        columns: columns.value
            .map(
              (e) => ColumnPostEntity(
                name: e.columnName.value,
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
