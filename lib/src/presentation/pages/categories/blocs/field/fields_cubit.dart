import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/core/enums/enums.dart';

part 'fields_state.dart';
part 'fields_cubit.freezed.dart';

@injectable
class FieldsCubit extends Cubit<FieldsState> {
  FieldsCubit() : super(const FieldsState.state(name: ''));
  void changeName(String name) {
    if (name == state.name) return;
    emit(state.copyWith(name: name));
  }

  void changeType(FieldTypeEnum? type) {
    if (type == state.sourceType) return;
    emit(state.copyWith(sourceType: type));
  }

  void clear() {
    emit(state.copyWith(name: '', sourceType: null));
  }
}
