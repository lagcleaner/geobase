import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

class CachedTileProvider extends TileProvider {
  CachedTileProvider();

  @override
  ImageProvider getImage(Coords<num> coords, TileLayer options) {
    return NetworkImage(getTileUrl(coords, options));
  }
}
