import 'dart:developer';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

Future<File> copyFile(File sourceFile, String newPath) async {
  final newFile = await sourceFile.copy(newPath);
  return newFile;
}

Future<File?> saveFile(File file) async {
  try {
    var directory = await getExternalStorageDirectory();
    directory ??= await getApplicationDocumentsDirectory();
    final lastSeparator = file.path.lastIndexOf(Platform.pathSeparator);
    final newPath = directory.path +
        (directory.path.endsWith(Platform.pathSeparator)
            ? ''
            : Platform.pathSeparator) +
        file.path.substring(lastSeparator + 1, file.path.length);

    return await copyFile(file, newPath);
  } catch (e) {
    log(e.toString());
  }
  return null;
}
