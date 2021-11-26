import 'package:flutter/widgets.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:geobase/src/presentation/core/utils/utils.dart';

import 'package:geobase/src/presentation/core/widgets/field_input_widgets/field_input_widget.dart';
import 'package:geobase/src/presentation/core/widgets/widgets.dart';

class DateTimeFieldInputWidget extends FieldInputWidget {
  const DateTimeFieldInputWidget({
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
      builder: (context, state) {
        return GestureDetector(
          onTap: () async {
            final initialValue =
                DateTime.tryParse(state.value.value?.toString() ?? '');
            final resultDate = await showDatePicker(
              context: context,
              helpText: 'Seleccione una Fecha',
              cancelText: 'Cancelar',
              confirmText: 'Aceptar',
              fieldLabelText: 'Fecha',
              initialDate: DateTime.now(),
              firstDate: DateTime(1900),
              lastDate: DateTime(DateTime.now().year + 100),
              currentDate:
                  DateTime.tryParse(state.value.value?.toString() ?? ''),
            );
            if (resultDate != null) {
              final resultTime = await showTimePicker(
                context: context,
                helpText: 'Seleccione una hora',
                cancelText: 'Cancelar',
                confirmText: 'Aceptar',
                hourLabelText: 'Hora',
                minuteLabelText: 'Minutos',
                initialTime: initialValue != null
                    ? TimeOfDay(
                        hour: initialValue.hour,
                        minute: initialValue.minute,
                      )
                    : TimeOfDay.now(),
              );
              if (resultTime != null) {
                inputBloc.dirty(
                  state.value.copyWithValue(
                    DateTime(
                      resultDate.year,
                      resultDate.month,
                      resultDate.day,
                      resultTime.hour,
                      resultTime.minute,
                    ).toString(),
                  ),
                );
              }
            }
          },
          child: AbsorbPointer(
            child: TextInputWidget(
              key: key,
              labelText: column.name,
              onChanged: (newValue) {
                FocusScope.of(context).unfocus();
                // inputBloc.dirty(state.value.copyWithValue(newValue));
              },
              controller: TextEditingCustom.fromValue(
                state.value.value?.toString() ?? '',
              ),
              errorText: state.error,
            ),
          ),
        );
      },
    );
  }
}
