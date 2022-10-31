import 'package:flutter/widgets.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:geobase/src/presentation/core/widgets/basic_inputs/basic_inputs.dart';
import 'package:geobase/src/presentation/core/widgets/field_input_widgets/field_input_widget.dart';

class IntFieldInputWidget extends FieldInputWidget {
  const IntFieldInputWidget({
    super.key,
    required super.column,
    required super.inputBloc,
  });

  @override
  Widget build(BuildContext context) {
    return _InternalTextInput(
      key: key,
      column: column,
      bloc: inputBloc,
    );
  }
}

class _InternalTextInput extends StatefulWidget {
  const _InternalTextInput({
    super. key,
    required this.column,
    required this.bloc,
  }) ;

  final ColumnGetEntity column;
  final LyInput<FieldValueEntity> bloc;

  @override
  State<_InternalTextInput> createState() => _InternalTextInputState();
}

class _InternalTextInputState extends State<_InternalTextInput> {
  late TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LyInputBuilder<FieldValueEntity>(
      lyInput: widget.bloc,
      builder: (context, state) {
        return TextInputWidget(
          labelText: widget.column.name,
          onChanged: (newValue) {
            widget.bloc.dirty(state.value.copyWithValue(newValue));
          },
          controller: controller
            ..setValue(
              state.value.value?.toString() ?? '',
            ),
          keyboardType: const TextInputType.numberWithOptions(signed: true),
          errorText: state.error,
        );
      },
    );
  }
}
