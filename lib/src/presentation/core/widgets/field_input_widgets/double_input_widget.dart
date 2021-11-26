import 'package:flutter/widgets.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:geobase/src/presentation/core/widgets/basic_inputs/basic_inputs.dart';
import 'package:geobase/src/presentation/core/widgets/field_input_widgets/field_input_widget.dart';

class DoubleFieldInputWidget extends FieldInputWidget {
  const DoubleFieldInputWidget({
    Key? key,
    required ColumnGetEntity column,
    required InputBloc<FieldValueEntity> inputBloc,
  }) : super(key: key, column: column, inputBloc: inputBloc);

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
    Key? key,
    required this.column,
    required this.bloc,
  }) : super(key: key);

  final ColumnGetEntity column;
  final InputBloc<FieldValueEntity> bloc;

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
    return InputBlocBuilder<FieldValueEntity>(
      bloc: widget.bloc,
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
          keyboardType: const TextInputType.numberWithOptions(
            decimal: true,
            signed: true,
          ),
          errorText: state.error,
        );
      },
    );
  }
}
