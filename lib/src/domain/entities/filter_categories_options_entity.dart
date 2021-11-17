import 'package:flutter/foundation.dart';

class FilterCategoriesOptionsEntity {
  FilterCategoriesOptionsEntity({
    this.nameSubstring,
    this.ids,
    this.names,
  }) : assert(nameSubstring != null || ids != null || names != null);

  factory FilterCategoriesOptionsEntity.byNameOnly(String nameSubstring) =>
      FilterCategoriesOptionsEntity(
        nameSubstring: nameSubstring,
        ids: [],
        names: [],
      );

  /// contains in the name
  final String? nameSubstring;

  final List<int>? ids;

  /// exact name match
  final List<String>? names;

  FilterCategoriesOptionsEntity copyWith({
    String? nameSubstring,
    List<int>? ids,
    List<String>? names,
  }) {
    return FilterCategoriesOptionsEntity(
      nameSubstring: nameSubstring ?? this.nameSubstring,
      ids: ids ?? this.ids,
      names: names ?? this.names,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FilterCategoriesOptionsEntity &&
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
