import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:geobase/src/domain/core/enums/enums.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/presentation/core/utils/input_validators.dart';

//TODO: DO THIS WITH REFLECTABLE...
InputBloc getInputBloc(FieldTypeEnum typeEnum) {
  switch (typeEnum) {
    case FieldTypeEnum.Bool:
      return InputBloc<bool>(
        pureValue: false,
      );
    case FieldTypeEnum.String:
      return InputBloc<String>(
        pureValue: '',
        validationType: ValidationType.explicit,
        validator: const ListValidator([
          StringValidator.required,
        ]),
      );
    case FieldTypeEnum.Double:
      return InputBloc<String>(
        pureValue: '',
        validationType: ValidationType.explicit,
        validator: const ListValidator([
          StringValidator.required,
          StringValidator.number,
        ]),
      );
    case FieldTypeEnum.Int:
      return InputBloc<String>(
        pureValue: '',
        validationType: ValidationType.explicit,
        validator: const ListValidator([
          StringValidator.required,
          StringValidator.integer,
        ]),
      );
    // case FieldTypeEnum.RemoteUrlFieldType:
    //   return InputBloc<String>(
    //     pureValue: '',
    //     validationType: ValidationType.explicit,
    //     validator: const ListValidator([
    //       StringValidator.required,
    //     ]),
    //   );
    // case FieldTypeEnum.DayFieldType:
    //   return InputBloc<String>(
    //     pureValue: '',
    //     validationType: ValidationType.explicit,
    //     validator: const ListValidator([
    //       StringValidator.required,
    //       StringValidator.integer,
    //     ]),
    //   );
    // case FieldTypeEnum.LocalAudioFieldType:
    //   return InputBloc<String>(
    //     pureValue: '',
    //     validationType: ValidationType.explicit,
    //     validator: const ListValidator([
    //       StringValidator.required,
    //     ]),
    //   );
    // case FieldTypeEnum.LocalPhotoFieldType:
    //   return InputBloc<String>(
    //     pureValue: '',
    //     validationType: ValidationType.explicit,
    //     validator: const ListValidator([
    //       StringValidator.required,
    //     ]),
    //   );
    // case FieldTypeEnum.LocalFileFieldType:
    //   return InputBloc<String>(
    //     pureValue: '',
    //     validationType: ValidationType.explicit,
    //     validator: const ListValidator([
    //       StringValidator.required,
    //     ]),
    //   );
    // case FieldTypeEnum.MonthFieldType:
    //   return InputBloc<MonthEnum?>(
    //     pureValue: null,
    //     validationType: ValidationType.explicit,
    //     validator: const ListValidator([
    //       DynamicValidator.required,
    //     ]),
    //   );
    // case FieldTypeEnum.WeekDayFieldType:
    //   return InputBloc<WeekDayEnum?>(
    //     pureValue: null,
    //     validationType: ValidationType.explicit,
    //     validator: const ListValidator([
    //       DynamicValidator.required,
    //     ]),
    //   );
    // case FieldTypeEnum.YearFieldType:
    //   return InputBloc<String>(
    //     pureValue: '',
    //     validationType: ValidationType.explicit,
    //     validator: const ListValidator([
    //       StringValidator.required,
    //       StringValidator.integer,
    //     ]),
    //   );
    case FieldTypeEnum.Date:
      return InputBloc<DateTime?>(
        pureValue: null,
        validationType: ValidationType.explicit,
        validator: const ListValidator([
          DynamicValidator.required,
        ]),
      );
    case FieldTypeEnum.DateTime:
      return InputBloc<DateTime?>(
        pureValue: null,
        validationType: ValidationType.explicit,
        validator: const ListValidator([
          DynamicValidator.required,
        ]),
      );
    // case FieldTypeEnum.Time:
    //   return InputBloc<TimeEntity?>(
    //     pureValue: null,
    //     validationType: ValidationType.explicit,
    //     validator: const ListValidator([
    //       DynamicValidator.required,
    //     ]),
    //   );
    default:
      return InputBloc<dynamic>(
        pureValue: null,
        validationType: ValidationType.explicit,
        validator: const ListValidator([
          DynamicValidator.required,
        ]),
      );
  }
}
