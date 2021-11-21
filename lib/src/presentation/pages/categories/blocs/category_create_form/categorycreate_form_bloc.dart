import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/services.dart';
import 'package:geobase/src/presentation/core/utils/utils.dart';
import 'package:injectable/injectable.dart';

abstract class ICategoryCreateFormBloc extends FormBloc<Unit, Failure> {
  InputBloc<String> get name;
  InputBloc<String> get description;
  InputBloc<int?> get icon;
  InputBloc<Color?> get color;

  @override
  List<InputBloc> get inputs => [name, color];
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
  final InputBloc<String> description = InputBloc<String>(
    pureValue: '',
  );

  @override
  final InputBloc<Color?> color = InputBloc<Color?>(
    pureValue: null,
  );

  @override
  final InputBloc<int?> icon = InputBloc<int?>(
    pureValue: null,
    validationType: ValidationType.explicit,
    validator: const ListValidator(
      [
        DynamicValidator.required,
      ],
    ),
  );

  final ICategoryService categoryService;

  @override
  Future<FormBlocState<Unit, Failure>> onSubmmit() async {
    final response = await categoryService.createCategory(
      CategoryPostEntity(
        name: name.state.value,
        color: color.state.value?.value,
        description: description.state.value,
        icon: icon.state.value,
      ),
    );
    return response.fold(
      (error) => FormErrorState(error),
      (_) => const FormSuccessState(unit),
    );
  }
}
