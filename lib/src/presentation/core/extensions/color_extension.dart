import 'package:flutter/material.dart';

extension ColorDarkenBrighten on Color {
  Color darken([int percent = 10]) {
    assert(1 <= percent && percent <= 100);
    final f = 1 - percent / 100;
    return Color.fromARGB(
      alpha,
      (red * f).round(),
      (green * f).round(),
      (blue * f).round(),
    );
  }

  Color brighten([int percent = 10]) {
    assert(1 <= percent && percent <= 100);
    final p = percent / 100;
    return Color.fromARGB(
      alpha,
      red + ((255 - red) * p).round(),
      green + ((255 - green) * p).round(),
      blue + ((255 - blue) * p).round(),
    );
  }

  Color getContrastColor(Color color) {
    return (299 * color.red + 587 * color.green + 114 * color.blue) / 1000 >=
            128
        ? Colors.black87
        : Colors.white70;
  }
}
