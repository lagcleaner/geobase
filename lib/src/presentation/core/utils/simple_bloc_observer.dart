import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geobase/injection.dart';

@LazySingleton(as: BlocObserver)
class SimpleBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log('[BlocChange] ${bloc.runtimeType}: ${change.currentState} -> ${change.nextState}');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    log('[BlocError] ${bloc.runtimeType}: ${error.toString()} (${stackTrace.toString()})');
  }
}
