import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geobase/injection.dart';

part 'fields_state.dart';
part 'fields_cubit.freezed.dart';

@injectable
class FieldsCubit extends Cubit<FieldsState> {
  FieldsCubit() : super(const FieldsState.state(name: ''));
  void changeName(String name) {
    if (name == state.name) return;
    emit(state.copyWithValue(name: name));
  }

  void changeType(FieldTypeEnum? type) {
    if (type == state.sourceType) return;
    emit(state.copyWithValue(sourceType: type));
  }

  void clear() {
    emit(state.copyWithValue(name: '', sourceType: null));
  }
}
