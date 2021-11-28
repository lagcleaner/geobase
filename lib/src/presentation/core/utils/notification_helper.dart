import 'package:flutter/material.dart';

class NotificationHelper {
  static Future<void> showSuccessSnackbar(
    BuildContext context, {
    required String message,
    void Function()? onShow,
  }) async {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          backgroundColor: Colors.green.shade900,
          content: Text(message),
        ),
      );
    onShow?.call();
  }

  static Future<void> showInfoSnackbar(
    BuildContext context, {
    required String message,
    void Function()? onShow,
  }) async {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          backgroundColor: Theme.of(context).primaryColor,
          content: Text(message),
        ),
      );
    onShow?.call();
  }

  static Future<void> showErrorSnackbar(
    BuildContext context, {
    required String message,
    void Function()? onShow,
  }) async {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          backgroundColor: Colors.red.shade900,
          content: Text(message),
        ),
      );
    onShow?.call();
  }
}
