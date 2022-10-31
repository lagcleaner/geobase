import 'package:flutter/material.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/utils/utils.dart';
import 'package:geobase/src/presentation/core/widgets/render_classes/field_render_classes/field_render_class.dart';
import 'package:geobase/src/presentation/core/widgets/render_classes/reflect.dart';
import 'package:geobase/src/presentation/core/widgets/widgets.dart';

@fieldRenderReflectable
class BaseDoubleFieldRender implements IFieldRenderClass {
  factory BaseDoubleFieldRender() {
    return _instance;
  }

  BaseDoubleFieldRender._internal();

  static final BaseDoubleFieldRender _instance =
      BaseDoubleFieldRender._internal();

  @override
  LyInput<FieldValueEntity> getInputBloc(
    FieldValueEntity fieldValue,
  ) {
    return LyInput<FieldValueEntity>(
      pureValue: fieldValue,
      validationType: LyValidationType.explicit,
      validator: LyListValidator([
        FieldValueValidator.from(StringValidator.required),
        FieldValueValidator.from(StringValidator.number),
      ]),
    );
  }

  @override
  Widget getInputWidget(
    ColumnGetEntity column,
    LyInput<FieldValueEntity> fieldInputBloc,
  ) {
    return DoubleFieldInputWidget(
      key: Key('FieldInput${column.name}${column.id}'),
      column: column,
      inputBloc: fieldInputBloc,
    );
  }

  @override
  Widget getViewWidget(FieldValueGetEntity fieldValue) {
    return BaseFieldView(
      fieldValue: fieldValue,
    );
  }
}
