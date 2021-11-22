import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

ValueChanged<T>? fieldBlocBuilderOnChange<T>({
  required bool isEnabled,
  required FocusNode? nextFocusNode,
  required void Function(T value) onChanged,
}) {
  if (isEnabled) {
    return (T value) {
      onChanged(value);
      if (nextFocusNode != null) {
        nextFocusNode.requestFocus();
      }
    };
  }
  return null;
}

bool fieldBlocIsEnabled({
  required bool isEnabled,
  bool? enableOnlyWhenFormBlocCanSubmit,
  required FieldBlocState fieldBlocState,
}) {
  return isEnabled &&
      // ignore: avoid_bool_literals_in_conditional_expressions
      ((enableOnlyWhenFormBlocCanSubmit ?? false)
          ? fieldBlocState.formBloc?.state.canSubmit ?? true
          : true);
}

TextStyle? getDefaultTextStyle({
  required BuildContext context,
  required bool isEnabled,
}) =>
    isEnabled
        ? Theme.of(context).textTheme.subtitle1
        : Theme.of(context)
            .textTheme
            .subtitle1
            ?.copyWith(color: Theme.of(context).disabledColor);
String? getErrorText({
  required BuildContext context,
  required FieldBlocState? fieldBlocState,
  required FieldBlocErrorBuilder? errorBuilder,
  required FieldBloc fieldBloc,
}) {
  if (fieldBlocState != null && fieldBlocState.canShowError) {
    if (errorBuilder != null) {
      return errorBuilder(context, fieldBlocState.error);
    } else {
      return FieldBlocBuilder.defaultErrorBuilder(
        // ignore: curly_braces_in_flow_control_structures
        context,
        fieldBlocState.error,
        fieldBloc,
      );
    }
  } else {
    return null;
  }
}
