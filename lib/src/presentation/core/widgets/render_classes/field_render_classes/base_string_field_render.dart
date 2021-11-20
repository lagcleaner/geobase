import 'package:flutter/material.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/utils/utils.dart';
import 'package:geobase/src/presentation/core/widgets/render_classes/field_render_classes/field_render_class.dart';
import 'package:geobase/src/presentation/core/widgets/render_classes/reflect.dart';
import 'package:geobase/src/presentation/core/widgets/widgets.dart';

@fieldRenderReflectable
class BaseStringFieldRender implements IFieldRenderClass {
  factory BaseStringFieldRender() {
    return _instance;
  }

  BaseStringFieldRender._internal();

  static final BaseStringFieldRender _instance =
      BaseStringFieldRender._internal();

  @override
  InputBloc<FieldValueEntity> getInputBloc(
    FieldValueEntity fieldValue,
  ) {
    return InputBloc<FieldValueEntity>(
      pureValue: fieldValue,
      validationType: ValidationType.explicit,
      validator: ListValidator([
        FieldValueValidator.from(StringValidator.required),
      ]),
    );
  }

  @override
  Widget getInputWidget(
    ColumnGetEntity column,
    InputBloc<FieldValueEntity> fieldInputBloc,
  ) {
    return InputBlocBuilder<FieldValueEntity>(
      bloc: fieldInputBloc,
      builder: (context, state) {
        return StringFieldInputWidget(
          key: Key('FieldInput${column.name}${column.id}'),
          column: column,
          errorText: state.error,
          fieldValue: state.value,
          onChanged: (newValue) {
            fieldInputBloc.dirty(state.value.copyWithValue(newValue));
          },
        );
      },
    );
  }

  @override
  Widget getViewWidget(FieldValueGetEntity fieldValue) {
    // TODO: implement getViewWidget
    throw UnimplementedError();
  }
}
