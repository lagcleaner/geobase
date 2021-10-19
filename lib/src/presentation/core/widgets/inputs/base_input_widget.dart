import 'package:flutter/widgets.dart';

import 'package:geobase/src/domain/core/enums/enums.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/widgets/inputs/inputs.dart';

class BaseInputWidget extends StatelessWidget {
  const BaseInputWidget({
    Key? key,
    required this.name,
    required this.fieldValue,
    this.onChanged,
    this.errorText,
  }) : super(key: key);

  factory BaseInputWidget.widget({
    required String name,
    required FieldValueEntity fieldValue,
    String? errorText,
    ValueChanged? onChanged,
  }) {
    switch (fieldValue.type) {
      case FieldTypeEnum.BoolFieldType:
        return BoolInputWidget(
          key: Key('inputfield_$name'),
          name: name,
          fieldValue: fieldValue,
          errorText: errorText,
          onChanged: onChanged,
        );
      case FieldTypeEnum.IntFieldType:
        return IntInputWidget(
          key: Key('inputfield_$name'),
          name: name,
          fieldValue: fieldValue,
          errorText: errorText,
          onChanged: onChanged,
        );
      case FieldTypeEnum.DoubleFieldType:
        return DoubleInputWidget(
          key: Key('inputfield_$name'),
          name: name,
          fieldValue: fieldValue,
          errorText: errorText,
          onChanged: onChanged,
        );

      case FieldTypeEnum.DateFieldType:
        return DateInputWidget(
          key: Key('inputfield_$name'),
          name: name,
          fieldValue: fieldValue,
          errorText: errorText,
          onChanged: onChanged,
        );
      case FieldTypeEnum.DateTimeFieldType:
        return DateTimeInputWidget(
          key: Key('inputfield_$name'),
          name: name,
          fieldValue: fieldValue,
          errorText: errorText,
          onChanged: onChanged,
        );
      case FieldTypeEnum.TimeFieldType:
        return TimeInputWidget(
          key: Key('inputfield_$name'),
          name: name,
          fieldValue: fieldValue,
          errorText: errorText,
          onChanged: onChanged,
        );
      case FieldTypeEnum.DayFieldType:
        return IntInputWidget(
          key: Key('inputfield_$name'),
          name: name,
          fieldValue: fieldValue,
          errorText: errorText,
          onChanged: onChanged,
        );
      case FieldTypeEnum.MonthFieldType:
        return MonthInputWidget(
          key: Key('inputfield_$name'),
          name: name,
          fieldValue: fieldValue,
          errorText: errorText,
          onChanged: onChanged,
        );
      case FieldTypeEnum.YearFieldType:
        return IntInputWidget(
          key: Key('inputfield_$name'),
          name: name,
          fieldValue: fieldValue,
          errorText: errorText,
          onChanged: onChanged,
        );
      case FieldTypeEnum.WeekDayFieldType:
        return WeekDayInputWidget(
          key: Key('inputfield_$name'),
          name: name,
          fieldValue: fieldValue,
          errorText: errorText,
          onChanged: onChanged,
        );
      case FieldTypeEnum.LocalAudioFieldType:
        return LocalAudioInputWidget(
          key: Key('inputfield_$name'),
          name: name,
          fieldValue: fieldValue,
          errorText: errorText,
          onChanged: onChanged,
        );
      case FieldTypeEnum.LocalFileFieldType:
        return LocalFileInputWidget(
          key: Key('inputfield_$name'),
          name: name,
          fieldValue: fieldValue,
          errorText: errorText,
          onChanged: onChanged,
        );
      case FieldTypeEnum.LocalPhotoFieldType:
        return LocalPhotoInputWidget(
          key: Key('inputfield_$name'),
          name: name,
          fieldValue: fieldValue,
          errorText: errorText,
          onChanged: onChanged,
        );
      case FieldTypeEnum.StringFieldType:
      default:
        return StringInputWidget(
          key: Key('inputfield_$name'),
          name: name,
          fieldValue: fieldValue,
          errorText: errorText,
          onChanged: onChanged,
        );
    }
  }

  final String name;
  final FieldValueEntity fieldValue;
  final ValueChanged? onChanged;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return const Text('Tipo de datos no soportado.');
  }
}
