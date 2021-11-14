extension getOrExtension on Map<String, dynamic> {
  T getCastedOrDefault<T>(String? key, {required T defaultValue}) {
    if (key != null && this[key] != null && this[key] is T) {
      return this[key] as T;
    } else {
      return defaultValue;
    }
  }

  T getCastedOrCrash<T>(String? key) {
    if (key != null && this[key] != null && this[key] is T) {
      return this[key] as T;
    } else {
      throw Exception('key-value pair not found or invalid');
    }
  }
}

extension FirstOrNull<T> on List<T> {
  T? firstWhereOrNull(bool Function(T) test) {
    for (final elem in this) {
      if (test(elem)) return elem;
    }
    return null;
  }
}
