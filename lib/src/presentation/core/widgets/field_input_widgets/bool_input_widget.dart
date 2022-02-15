import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:geobase/src/presentation/core/widgets/field_input_widgets/field_input_widget.dart';

class BoolFieldInputWidget extends FieldInputWidget {
  const BoolFieldInputWidget({
    Key? key,
    required ColumnGetEntity column,
    required InputBloc<FieldValueEntity> inputBloc,
  }) : super(
          key: key,
          column: column,
          inputBloc: inputBloc,
        );

  @override
  Widget build(BuildContext context) {
    return InputBlocBuilder<FieldValueEntity>(
      bloc: inputBloc,
      builder: (contex, state) => CheckboxListTile(
        key: key,
        controlAffinity: ListTileControlAffinity.leading,
        title: Text(column.name),
        value: (state.value.value as bool?) ?? false,
        onChanged: (newValue) {
          inputBloc.dirty(state.value.copyWithValue(newValue));
        },
      ),
    );
  }
}
