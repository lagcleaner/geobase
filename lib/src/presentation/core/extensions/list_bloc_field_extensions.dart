import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:geobase/src/presentation/core/utils/utils.dart';

typedef ListFieldValidationBuilder = Validator<String> Function(
  ListFieldBloc<TextFieldBloc>,
  TextFieldBloc,
);

extension ListFieldBlocOfTextFieldBlocsExtension
    on ListFieldBloc<TextFieldBloc> {
  void initiailizeAutoRemovableListFieldBloc({
    List<String>? defaultValues,
    List<ListFieldValidationBuilder> validationBuilders = const [],
  }) {
    removeFieldBlocsWhere((f) => true);
    if (defaultValues?.isNotEmpty ?? false) {
      for (final element in defaultValues!) {
        _addAutoRemovableField(element, validationBuilders);
      }
    }
    _addAutoRemovableField('', validationBuilders);
  }

  void _addAutoRemovableField(
    String? initialValue, [
    List<ListFieldValidationBuilder> validationBuilders = const [],
  ]) {
    final currentField = TextFieldBloc(
      initialValue: initialValue,
      validators: [],
    );
    currentField.addValidators([
      _notRequiredLastIfIsNotAlone(currentField),
      ...validationBuilders.map((e) => e(this, currentField)).toList(),
    ]);

    addFieldBloc(
      currentField
        ..onValueChanges(
          onData: (prev, curr) async* {
            if (value.last != currentField && (curr.value ?? '') == '') {
              removeFieldBlocsWhere((element) {
                return element == currentField;
              });
            }
            if (value.last == currentField &&
                (prev.value ?? '') == '' &&
                (curr.value ?? '') != '') {
              _addAutoRemovableField('', validationBuilders);
            }
          },
        ),
    );
  }

  String? Function(String?) _notRequiredLastIfIsNotAlone(
    TextFieldBloc currentField,
  ) {
    return (e) {
      if (value.length > 1 && value.last == currentField) {
        return null;
      }
      return StringValidator.required(e);
    };
  }
}
