import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';

part 'column_state.dart';
part 'fields_cubit.freezed.dart';

@injectable
class ColumnCubit extends Cubit<ColumnState> {
  ColumnCubit() : super(const ColumnState.state(name: ''));

  void changeName(String name) {
    if (name == state.name) return;
    emit(state.copyWithValue(name: name));
  }

  void changeType(FieldTypeGetEntity type) {
    if (type == state.type) return;
    emit(state.copyWithValue(type: type));
  }

  void clear() {
    emit(state.copyWithValue(name: '', type: null));
  }
}
