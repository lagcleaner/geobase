import 'package:dartz/dartz.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/interfaces/interfaces.dart';
import 'package:geobase/src/presentation/core/extensions/list_bloc_field_extensions.dart';
import 'package:geobase/src/presentation/core/utils/utils.dart';

@injectable
class StaticSelectionCreateFormBloc extends FormBloc<Unit, String> {
  StaticSelectionCreateFormBloc({
    required this.service,
    required this.fieldTypeService,
  }) {
    addFieldBlocs(
      fieldBlocs: [
        name,
        options,
      ],
    );
  }

  final IFieldTypeStaticSelectionService service;

  final IFieldTypeService fieldTypeService;

  Future<String?> _nameIsTaken(String? value) async {
    final either = await fieldTypeService.loadAll();
    either.fold(
      (failure) {
        emitFailure(failureResponse: failure.message);
      },
      (types) {
        return types.any((e) => e.name == value) ? 'The name is taken.' : null;
      },
    );
  }

  late final name = TextFieldBloc(
    asyncValidatorDebounceTime: const Duration(seconds: 1),
    asyncValidators: [_nameIsTaken],
    validators: [
      StringValidator.required,
    ],
  );

  final ListFieldBloc<TextFieldBloc> options = ListFieldBloc();

  @override
  Future<void> onLoading() async {
    options.initiailizeAutoRemovableListFieldBloc(
      validationBuilders: [valueIsRepeated],
    );
    emitLoaded();
  }

  @override
  Future<void> onSubmitting() async {
    final result = await service.createStaticSelection(
      FieldTypeStaticSelectionPostEntity(
        name: name.value!,
        options: options.value
            .map((e) => e.value!)
            .where((e) => e.isNotEmpty)
            .toList(),
      ),
    );
    result.fold(
      (failure) {
        emitFailure(failureResponse: failure.message);
      },
      (fieldTypeId) {
        emitSuccess(successResponse: unit);
      },
    );
  }
}

String? Function(String?) valueIsRepeated(
  ListFieldBloc<TextFieldBloc> listBloc,
  TextFieldBloc self,
) {
  return (String? value) {
    if (listBloc.value.length > 1 &&
        listBloc.value.any((e) => e.value == value && self != e)) {
      return 'Los valores no pueden repetirse.';
    }
  };
}
