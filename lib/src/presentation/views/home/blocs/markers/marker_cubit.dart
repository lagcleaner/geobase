import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../domain/entities/entities.dart';

part 'marker_cubit.freezed.dart';
part 'marker_state.dart';

class MarkerCubit extends Cubit<MarkerState> {
  MarkerCubit() : super(const MarkerState.initial());
}
