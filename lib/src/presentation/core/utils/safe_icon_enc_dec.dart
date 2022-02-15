import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_iconpicker/flutter_iconpicker.dart';

class IconCodeUtils {
  static String? encode(IconData? iconData) {
    try {
      return jsonEncode(serializeIcon(iconData!));
    } catch (e) {
      return null;
    }
  }

  static IconData? decode(String? rawIcon) {
    try {
      return deserializeIcon(jsonDecode(rawIcon!) as Map<String, dynamic>);
    } catch (e) {
      return null;
    }
  }
}
