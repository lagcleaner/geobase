mixin GetFieldTypeNameMixin {
  String get fieldTypeName {
    final genType = runtimeType.toString();
    final ind = genType.indexOf('\$');
    final endInd = genType.indexOf('FieldType');
    return genType.substring(ind + 1, endInd);
  }
}