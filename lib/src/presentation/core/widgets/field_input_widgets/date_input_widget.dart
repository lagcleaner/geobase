import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:geobase/src/presentation/core/utils/utils.dart';
import 'package:geobase/src/presentation/core/widgets/widgets.dart';

class DateFieldInputWidget extends FieldInputWidget {
  const DateFieldInputWidget({
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
            final result = await showDatePicker(
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
              builder: (context, child) {
                return Theme(
                  data: Theme.of(context).copyWith(
                    colorScheme: ColorScheme.light(
                      primary: Theme.of(context)
                          .primaryColor, // header background color
                      onPrimary: Theme.of(context)
                          .backgroundColor, // header text color
                      onSurface: Theme.of(context).textTheme.bodyText1?.color ??
                          Colors.black, // body text color
                      background: Theme.of(context).backgroundColor,
                    ),
                  ),
                  child: child ?? const SizedBox(),
                );
              },
            );
            if (result != null) {
              inputBloc.dirty(
                state.value.copyWithValue(
                  result.toString().split(' ')[0],
                ),
              );
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
