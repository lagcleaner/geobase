import 'package:reflectable/reflectable.dart';

extension ReflectableExtension on Reflectable {
  ClassMirror? getClassByNameStructure({
    String prefix = '',
    String suffix = '',
    bool Function(ClassMirror)? aditionalCondition,
  }) {
    for (final cm in annotatedClasses) {
      if (prefix.matchAsPrefix(cm.simpleName) != null &&
          cm.simpleName.endsWith(suffix) &&
          (aditionalCondition?.call(cm) ?? true)) {
        return cm;
      }
    }
  }

  MethodMirror? getStaticMethodByNameStructure(
    ClassMirror classMirror, {
    String prefix = '',
    String suffix = '',
    bool Function(MethodMirror)? aditionalCondition,
  }) {
    for (final mm in classMirror.staticMembers.entries) {
      if (prefix.matchAsPrefix(mm.key) != null &&
          mm.key.endsWith(suffix) &&
          mm.value.isStatic &&
          !mm.value.isFactoryConstructor &&
          (aditionalCondition?.call(mm.value) ?? true)) {
        return mm.value;
      }
    }
  }
}
