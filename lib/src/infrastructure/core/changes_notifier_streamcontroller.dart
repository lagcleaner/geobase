import 'dart:async';

class ObjectChangeNotifier<T> {
  ObjectChangeNotifier([T? initialObj]) : _state = initialObj;

  late StreamController<T> _changesNotifier;

  T? _state;

  T? get currentState => _state;
  Stream<T> get stream => _changesNotifier.stream;

  void add(T newObject) {
    if (_state != newObject) {
      _changesNotifier.add(newObject);
      _state = newObject;
    }
  }
}
