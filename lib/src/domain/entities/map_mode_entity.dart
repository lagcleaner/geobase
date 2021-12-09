class MapModeEntity {
  const MapModeEntity({
    this.categoryUsed,
  });

  final int? categoryUsed;

  MapModeEntity copyWith({
    int? categoryUsed,
  }) {
    return MapModeEntity(
      categoryUsed: categoryUsed ?? this.categoryUsed,
    );
  }
}
