import 'package:flutter/foundation.dart';

import 'nearby_area.dart';

class FilterDataOptions {
  final List<int> ids;
  final NearbyArea? nearTo;
  final int? categoryId;

  FilterDataOptions({
    this.ids = const [],
    this.nearTo,
    this.categoryId,
  });

  factory FilterDataOptions.clean() => FilterDataOptions();

  FilterDataOptions copyWith({
    List<int>? ids,
    NearbyArea? nearTo,
    int? categoryId,
  }) {
    return FilterDataOptions(
      ids: ids ?? this.ids,
      nearTo: nearTo ?? this.nearTo,
      categoryId: categoryId ?? this.categoryId,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FilterDataOptions &&
        listEquals(other.ids, ids) &&
        other.nearTo == nearTo &&
        other.categoryId == categoryId;
  }

  @override
  int get hashCode => ids.hashCode ^ nearTo.hashCode ^ categoryId.hashCode;

  @override
  String toString() =>
      'FilterOptions(ids: $ids, nearTo: $nearTo, categoryId: $categoryId)';
}
