import 'package:flutter/material.dart';

final TextStyle buttonTextStyle = TextStyle();

final ThemeData themeLight = ThemeData(
  primaryColorDark: Colors.green.shade600,
  primaryColorLight: Colors.green.shade100,
  appBarTheme: const AppBarTheme(centerTitle: true),
  primaryColor: Colors.green,
  primarySwatch: Colors.amber,
  accentColor: Colors.white30,
  buttonTheme: ButtonThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    padding: const EdgeInsets.all(8),
  ),
);
