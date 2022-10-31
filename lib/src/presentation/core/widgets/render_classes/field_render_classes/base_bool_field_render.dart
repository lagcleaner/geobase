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
  LyInput<FieldValueEntity> getInputBloc(
    FieldValueEntity fieldValue,
  ) {
    return LyInput<FieldValueEntity>(
      pureValue: fieldValue,
    );
  }

  @override
  Widget getInputWidget(
    ColumnGetEntity column,
    LyInput<FieldValueEntity> fieldInputBloc,
  ) {
    return BoolFieldInputWidget(
      key: Key('FieldInput${column.name}${column.id}'),
      column: column,
      inputBloc: fieldInputBloc,
    );
  }

  @override
  FieldViewWidget getViewWidget(FieldValueGetEntity fieldValue) {
    return BaseFieldView(
      fieldValue: fieldValue.copyWithValue(
        ((fieldValue.value as bool?) ?? false) ? 'Si' : 'No',
      ) as FieldValueGetEntity,
    );
  }
}
