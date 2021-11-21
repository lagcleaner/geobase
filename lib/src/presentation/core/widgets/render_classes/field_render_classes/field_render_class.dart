import 'package:flutter_lyform/flutter_lyform.dart';

import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/app.dart';
import 'package:geobase/src/presentation/core/widgets/render_classes/reflect.dart';

import '../../widgets.dart';

@fieldRenderReflectable
abstract class IFieldRenderClass {
  InputBloc<FieldValueEntity> getInputBloc(
    FieldValueEntity fieldValue,
  );

  Widget getInputWidget(
    ColumnGetEntity column,
    InputBloc<FieldValueEntity> inputBloc,
  );

  Widget getViewWidget(FieldValueGetEntity fieldValue);
}
