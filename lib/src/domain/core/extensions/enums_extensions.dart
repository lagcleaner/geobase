import 'package:geobase/src/domain/core/enums/enums.dart';

extension EnumExtension on Enum {
  String get name => toString().split('.').last;
}

extension FieldTypeExtension on FieldTypeEnum {
  String visualName() {
    switch (this) {
      case FieldTypeEnum.BoolFieldType:
        return 'boolean';
      case FieldTypeEnum.IntFieldType:
        return 'entero';
      case FieldTypeEnum.StringFieldType:
        return 'texto';
      case FieldTypeEnum.DateFieldType:
        return 'fecha';
      case FieldTypeEnum.DateTimeFieldType:
        return 'fecha y hora';
      case FieldTypeEnum.DayFieldType:
        return 'día';
      case FieldTypeEnum.DoubleFieldType:
        return 'número';
      case FieldTypeEnum.MonthFieldType:
        return 'mes';
      case FieldTypeEnum.YearFieldType:
        return 'año';
      case FieldTypeEnum.TimeFieldType:
        return 'hora';
      case FieldTypeEnum.WeekDayFieldType:
        return 'día semanal';
      case FieldTypeEnum.LocalAudioFieldType:
        return 'audio';
      case FieldTypeEnum.LocalPhotoFieldType:
        return 'foto';
      case FieldTypeEnum.LocalFileFieldType:
        return 'archivo';
      case FieldTypeEnum.RemoteUrlFieldType:
        return 'enlace remoto';
      default:
        return name;
    }
  }

  bool isTypeOf(dynamic value) {
    switch (this) {
      case FieldTypeEnum.BoolFieldType:
        return (value as bool?) != null;
      case FieldTypeEnum.IntFieldType:
        return (value as int?) != null;
      case FieldTypeEnum.StringFieldType:
        return (value as String?) != null;
      case FieldTypeEnum.DateFieldType:
        return (value as DateTime?) != null;
      case FieldTypeEnum.DateTimeFieldType:
        return (value as DateTime?) != null;
      case FieldTypeEnum.DayFieldType:
        return (value as int?) != null;
      case FieldTypeEnum.DoubleFieldType:
        return (value as double?) != null;
      case FieldTypeEnum.MonthFieldType:
        return (value as int?) != null;
      case FieldTypeEnum.YearFieldType:
        return (value as int?) != null;
      case FieldTypeEnum.TimeFieldType:
        return (value as DateTime?) != null;
      case FieldTypeEnum.WeekDayFieldType:
        return (value as String?) != null;
      case FieldTypeEnum.LocalAudioFieldType:
        return (value as String?) != null;
      case FieldTypeEnum.LocalPhotoFieldType:
        return (value as String?) != null;
      case FieldTypeEnum.LocalFileFieldType:
        return (value as String?) != null;
      case FieldTypeEnum.RemoteUrlFieldType:
        return (value as String?) != null;
      default:
        throw Exception();
    }
  }
}
