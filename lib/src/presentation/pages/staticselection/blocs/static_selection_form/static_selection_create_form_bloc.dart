import 'package:dartz/dartz.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/interfaces/interfaces.dart';
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
    _initiailizeAutoRemovableListFieldBloc(options, []);
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

void _initiailizeAutoRemovableListFieldBloc(
  ListFieldBloc<TextFieldBloc> listBloc,
  List<String>? defaultValues,
) {
  listBloc.removeFieldBlocsWhere((f) => true);
  if (defaultValues?.isNotEmpty ?? false) {
    for (final element in defaultValues!) {
      _addAutoRemovableField(listBloc, element);
    }
  }
  _addAutoRemovableField(listBloc, '');
}

void _addAutoRemovableField(
  ListFieldBloc<TextFieldBloc> listBloc,
  String? initialValue,
) {
  final self = TextFieldBloc(
    initialValue: initialValue,
    validators: [],
  );
  self.addValidators([
    notRequiredLastIfIsNotAlone(listBloc, self),
    valueIsRepeated(listBloc, self),
  ]);

  listBloc.addFieldBloc(
    self
      ..onValueChanges(
        onData: (prev, curr) async* {
          if (listBloc.value.last != self && (curr.value ?? '') == '') {
            listBloc.removeFieldBlocsWhere((element) {
              return element == self;
            });
          }
          if (listBloc.value.last == self &&
              (prev.value ?? '') == '' &&
              (curr.value ?? '') != '') {
            _addAutoRemovableField(listBloc, '');
          }
        },
      ),
  );
}

String? Function(String?) notRequiredLastIfIsNotAlone(
  ListFieldBloc<TextFieldBloc> listBloc,
  TextFieldBloc self,
) {
  return (e) {
    if (listBloc.value.length > 1 && listBloc.value.last == self) {
      return null;
    }
    return StringValidator.required(e);
  };
}

String? Function(String?) valueIsRepeated(
  ListFieldBloc<TextFieldBloc> listBloc,
  TextFieldBloc self,
) {
  return (String? value) {
    if (listBloc.value.length > 1 &&
        listBloc.value.any((e) => e.value == self.value && self != e)) {
      return 'The value is repeated';
    }
  };
}
