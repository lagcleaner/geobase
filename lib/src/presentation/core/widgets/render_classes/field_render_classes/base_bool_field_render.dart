import 'package:flutter/material.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/widgets/render_classes/field_render_classes/field_render_class.dart';
import 'package:geobase/src/presentation/core/widgets/render_classes/reflect.dart';
import 'package:geobase/src/presentation/core/widgets/widgets.dart';

@fieldRenderReflectable
class BaseBoolFieldRender implements IFieldRenderClass {
  factory BaseBoolFieldRender() {
    return _instance;
  }

  BaseBoolFieldRender._internal();

  static final BaseBoolFieldRender _instance = BaseBoolFieldRender._internal();

  @override
  InputBloc<FieldValueEntity> getInputBloc(
    FieldValueEntity fieldValue,
  ) {
    return InputBloc<FieldValueEntity>(
      pureValue: fieldValue,
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
        return BoolFieldInputWidget(
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
  FieldViewWidget getViewWidget(FieldValueGetEntity fieldValue) {
    return BaseFieldView(
      fieldValue: fieldValue,
    );
  }
}
