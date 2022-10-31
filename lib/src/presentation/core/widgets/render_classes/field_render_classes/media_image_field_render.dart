import 'package:flutter/material.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/utils/utils.dart';
import 'package:geobase/src/presentation/core/widgets/render_classes/field_render_classes/field_render_class.dart';
import 'package:geobase/src/presentation/core/widgets/render_classes/reflect.dart';
import 'package:geobase/src/presentation/core/widgets/widgets.dart';

@fieldRenderReflectable
class MediaImageFieldRender implements IFieldRenderClass {
  factory MediaImageFieldRender() {
    return _instance;
  }

  MediaImageFieldRender._internal();

  static final MediaImageFieldRender _instance =
      MediaImageFieldRender._internal();
  @override
  LyInput<FieldValueEntity> getInputBloc(
    FieldValueEntity fieldValue,
  ) {
    return LyInput<FieldValueEntity>(
      pureValue: fieldValue,
      validationType: LyValidationType.explicit,
      validator: LyListValidator([
        FieldValueValidator.from(DynamicValidator.required),
      ]),
    );
  }

  @override
  Widget getInputWidget(
    ColumnGetEntity column,
    LyInput<FieldValueEntity> fieldInputBloc,
  ) {
    return MediaImageFieldInputWidget(
      key: Key('FieldInput${column.name}${column.id}'),
      column: column,
      inputBloc: fieldInputBloc,
    );
  }

  @override
  Widget getViewWidget(FieldValueGetEntity fieldValue) {
    return MediaFieldView(
      fieldValue: fieldValue,
    );
  }
}
