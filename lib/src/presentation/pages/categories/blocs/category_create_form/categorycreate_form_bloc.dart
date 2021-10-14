import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:geobase/src/domain/core/enums/enums.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/services.dart';
import 'package:geobase/src/presentation/core/utils/utils.dart';
import 'package:injectable/injectable.dart';

abstract class ICategoryCreateFormBloc extends FormBloc<Unit, Failure> {
  InputBloc<String> get name;
  InputBloc<Color?> get color;
  InputBloc<Map<String, FieldTypeEnum>> get fields;
  InputBloc<Map<String, int>> get relations;

  @override
  List<InputBloc> get inputs => [name, color, fields, relations];
}

@Injectable(as: ICategoryCreateFormBloc)
class CategoryCreateFormBloc extends ICategoryCreateFormBloc {
  CategoryCreateFormBloc({
    required this.categoryService,
  }) : super();

  @override
  final InputBloc<String> name = InputBloc<String>(
    pureValue: '',
    validationType: ValidationType.explicit,
    validator: const ListValidator(
      [
        StringValidator.required,
      ],
    ),
  );

  @override
  final InputBloc<Color?> color = InputBloc<Color?>(
    pureValue: null,
    validationType: ValidationType.explicit,
  );

  @override
  final InputBloc<Map<String, FieldTypeEnum>> fields =
      InputBloc<Map<String, FieldTypeEnum>>(
    pureValue: {},
  );

  @override
  final InputBloc<Map<String, int>> relations = InputBloc<Map<String, int>>(
    pureValue: {},
  );

  final ICategoryService categoryService;

  @override
  Future<FormBlocState<Unit, Failure>> onSubmmit() async {
    final response = await categoryService.createCategory(
      CategoryPostEntity(
        name: name.state.value,
        color: color.state.value,
        fields: fields.state.value,
        relations: relations.state.value,
      ),
    );
    return response.fold(
      (error) => FormErrorState(error),
      (_) => const FormSuccessState(unit),
    );
  }
}
