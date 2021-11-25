import 'dart:developer';
import 'dart:typed_data';

Uint8List? getFileBytes(dynamic dbFile) {
  if (dbFile is String?) {
    //NO IDEA ....
    log('${dbFile?.length}');
  }
  if (dbFile is Uint8List?) {
    return dbFile;
  }
  if (dbFile is List?) {
    if (dbFile == null) return null;
    return Uint8List.fromList(dbFile.cast<int>());
  }
  return null;
}
