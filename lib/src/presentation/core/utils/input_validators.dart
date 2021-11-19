import 'package:geobase/src/domain/entities/entities.dart';

typedef InputFunctionValidator<T> = String? Function(T value);

class DynamicValidator {
  static String? required(dynamic value) =>
      value == null ? 'error_empty_input' : null;
}

class IterableValidator {
  static String? notEmpty(Iterable? value) =>
      value?.isEmpty ?? true ? 'error_empty_input' : null;
}

class StringValidator {
  /// assert when [value] is [null] or is not empty
  static String? required(String? value) =>
      value?.isEmpty ?? true ? 'error_empty_input' : null;

  static String? number(String? value) => value == null
      ? null
      : double.tryParse(value) == null
          ? 'error_invalid_number_input'
          : null;

  static String? integer(String? value) => value == null
      ? null
      : int.tryParse(value) == null
          ? 'error_invalid_number_input'
          : null;

  static InputFunctionValidator<String?> lengthGreaterThan(int len) =>
      (String? value) => value == null
          ? null
          : value.length > len
              ? null
              : 'error_too_short_input';

  static InputFunctionValidator<String?> lengthLowerThan(int len) =>
      (String? value) => value == null
          ? null
          : value.length < len
              ? null
              : 'error_too_long_input';

  static InputFunctionValidator<String> stringPasswordMatch(
    String Function() match,
  ) =>
      (String value) =>
          value != match() ? 'error_confirm_password_no_match_input' : null;
}

class DoubleValidator {
  static String? required(double? value) =>
      value == null ? 'error_invalid_value_or_empty' : null;
}

class IntValidator {
  static String? required(int? value) =>
      value == null ? 'error_invalid_value_or_empty' : null;

  static String? Function(int?) greaterThan(int limit) =>
      (int? value) => value == null || (value <= limit)
          ? 'error_lesser_or_equal_than_$limit'
          : null;

  static String? Function(int?) greaterEqualThan(int limit) => (int? value) =>
      value == null || (value < limit) ? 'error_lesser_than_$limit' : null;

  static String? Function(int?) lesserThan(int limit) =>
      (int? value) => value == null || (value >= limit)
          ? 'error_greater_or_equal_than_$limit'
          : null;

  static String? Function(int?) lesserEquealThan(int limit) => (int? value) =>
      value == null || (value > limit) ? 'error_greater_than_$limit' : null;

  static String? nonNegative(int? value) =>
      value == null || value >= 0 ? null : 'error_value_negative';
}

class FieldValueValidator {
  static InputFunctionValidator<FieldValueEntity> from<T>(
    InputFunctionValidator<T?> validator,
  ) =>
      (fieldValue) => validator(fieldValue.value as T?);
}
