import 'package:flutter/foundation.dart';

import 'package:geobase/src/domain/entities/nearby_area_entity.dart';

class FilterDataOptionsEntity {
  FilterDataOptionsEntity({
    this.ids,
    this.nearTo,
    this.categoryId,
  });

  factory FilterDataOptionsEntity.clean() => FilterDataOptionsEntity();

  final List<int>? ids;

  final NearbyArea? nearTo;

  final int? categoryId;

  FilterDataOptionsEntity copyWith({
    List<int>? ids,
    NearbyArea? nearTo,
    int? categoryId,
  }) {
    return FilterDataOptionsEntity(
      ids: ids ?? this.ids,
      nearTo: nearTo ?? this.nearTo,
      categoryId: categoryId ?? this.categoryId,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FilterDataOptionsEntity &&
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
