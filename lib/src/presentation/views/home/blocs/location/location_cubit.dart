import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'location_state.dart';
part 'location_cubit.freezed.dart';

class LocationCubit extends Cubit<LocationState> {
  LocationCubit() : super(const LocationState.disable());
}
