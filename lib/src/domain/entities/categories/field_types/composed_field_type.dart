abstract class IComposedFieldType {
  String get composedTypeName;
}

mixin GetComposedTypeNameMixin {
  String get fieldTypeName => 'Composed.${(this as dynamic).composedTypeName}';
}
