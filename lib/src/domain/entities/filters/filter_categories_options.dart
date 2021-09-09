import 'package:flutter/foundation.dart';

class FilterCategoriesOptions {
  /// contains in the name
  final String? nameSubstring;

  final List<int> ids;

  /// exact name match
  final List<String> names;

  FilterCategoriesOptions({
    this.nameSubstring,
    required this.ids,
    required this.names,
  });

  factory FilterCategoriesOptions.byNameOnly(String nameSubstring) =>
      FilterCategoriesOptions(
        nameSubstring: nameSubstring,
        ids: [],
        names: [],
      );

  FilterCategoriesOptions copyWith({
    String? nameSubstring,
    List<int>? ids,
    List<String>? names,
  }) {
    return FilterCategoriesOptions(
      nameSubstring: nameSubstring ?? this.nameSubstring,
      ids: ids ?? this.ids,
      names: names ?? this.names,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FilterCategoriesOptions &&
        other.nameSubstring == nameSubstring &&
        listEquals(other.ids, ids) &&
        listEquals(other.names, names);
  }

  @override
  int get hashCode => nameSubstring.hashCode ^ ids.hashCode ^ names.hashCode;

  @override
  String toString() =>
      'FilterCategoriesOptions(nameSubstring: $nameSubstring, ids: $ids, names: $names)';
}
