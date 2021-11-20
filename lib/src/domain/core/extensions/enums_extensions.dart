import 'package:geobase/src/domain/core/extensions/general_extensions.dart';

extension EnumExtension on Enum {
  String get name => toString().split('.').last;
}

// only to be used internally by amplify-flutter library
T? enumFromString<T extends Enum>(String? key, List<T> values) =>
    values.firstWhereOrNull((v) => key == v.name);
