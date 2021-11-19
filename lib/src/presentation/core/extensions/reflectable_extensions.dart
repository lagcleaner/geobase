import 'package:reflectable/reflectable.dart';

extension ReflectableExtension on Reflectable {
  ClassMirror? getClassMirrorWhere({
    String namePrefix = '',
    String nameSuffix = '',
    bool Function(ClassMirror)? aditionalCondition,
  }) {
    for (final cm in annotatedClasses) {
      if (namePrefix.startsWith(cm.simpleName) &&
          cm.simpleName.endsWith(nameSuffix) &&
          (aditionalCondition?.call(cm) ?? true)) {
        return cm;
      }
    }
  }

  MethodMirror? getStaticMethodWhere(
    ClassMirror classMirror, {
    String namePrefix = '',
    String nameSuffix = '',
    bool Function(MethodMirror)? aditionalCondition,
  }) {
    for (final mm in classMirror.staticMembers.entries) {
      if (namePrefix.startsWith(mm.key) &&
          mm.key.endsWith(nameSuffix) &&
          mm.value.isStatic &&
          !mm.value.isFactoryConstructor &&
          (aditionalCondition?.call(mm.value) ?? true)) {
        return mm.value;
      }
    }
  }
}
