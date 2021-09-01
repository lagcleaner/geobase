import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'marker_event.dart';
part 'marker_state.dart';
part 'marker_bloc.freezed.dart';

class MarkerBloc extends Bloc<MarkerEvent, MarkerState> {
  MarkerBloc() : super(const MarkerState.initial());

  @override
  Stream<MarkerState> mapEventToState(
    MarkerEvent event,
  ) async* {
    yield* event.map(
      started: startedHandler,
      moved: movedHandler,
    );
  }

  Stream<MarkerState> startedHandler(_MarkerStarted value) async* {
    //
  }

  Stream<MarkerState> movedHandler(_MapMoved value) async* {
    //
  }
}
