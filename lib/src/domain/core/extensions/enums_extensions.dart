import 'package:geobase/src/domain/core/enums/enums.dart';
import 'package:geobase/src/domain/entities/entities.dart';

extension EnumExtension on Enum {
  String get name => toString().split('.').last;
}

extension MapSourceExtension on MapSource {
  String visualName() {
    switch (this) {
      case MapSource.Assets:
        return 'Precompilado';
      case MapSource.File:
        return 'Local';
      case MapSource.CustomRemote:
        return 'Remoto Personalizado';
      case MapSource.WMS:
        return 'Remoto protocolo WMS';
      case MapSource.TMS:
        return 'Remoto protocolo TMS';
      case MapSource.Empty:
        return 'Sin fuente';
      default:
        return name;
    }
  }
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
        return (value as MonthEnum?) != null;
      case FieldTypeEnum.YearFieldType:
        return (value as int?) != null;
      case FieldTypeEnum.TimeFieldType:
        return (value as TimeEntity?) != null;
      case FieldTypeEnum.WeekDayFieldType:
        return (value as WeekDayEnum?) != null;
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

extension WeekDayExtensions on WeekDayEnum {
  String visualName() {
    switch (this) {
      case WeekDayEnum.monday:
        return 'Lunes';
      case WeekDayEnum.tuesday:
        return 'Martes';
      case WeekDayEnum.wednesday:
        return 'Miércoles';
      case WeekDayEnum.thursday:
        return 'Jueves';
      case WeekDayEnum.friday:
        return 'Viernes';
      case WeekDayEnum.saturday:
        return 'Sábado';
      case WeekDayEnum.sunday:
        return 'Domingo';
      default:
        return '';
    }
  }
}

extension MonthExtensions on MonthEnum {
  String visualName() {
    switch (this) {
      case MonthEnum.january:
        return 'Enero';
      case MonthEnum.february:
        return 'Febrero';
      case MonthEnum.march:
        return 'Marzo';
      case MonthEnum.april:
        return 'Abril';
      case MonthEnum.may:
        return 'Mayo';
      case MonthEnum.june:
        return 'Junio';
      case MonthEnum.july:
        return 'Julio';
      case MonthEnum.august:
        return 'Agosto';
      case MonthEnum.september:
        return 'Septiembre';
      case MonthEnum.october:
        return 'Octubre';
      case MonthEnum.november:
        return 'Noviembre';
      case MonthEnum.december:
        return 'Diciembre';
      default:
        return '';
    }
  }
}
