import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geobase/injection.dart';

import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/interfaces/interfaces.dart';

part 'static_selection_view_cubit.freezed.dart';
part 'static_selection_view_state.dart';

@injectable
class StaticSelectionViewCubit extends Cubit<StaticSelectionViewState> {
  StaticSelectionViewCubit(
    this.service,
  ) : super(const StaticSelectionViewState.fetchInProgress());

  final IFieldTypeStaticSelectionService service;

  Future<void> fetch(int fieldTypeId) async {
    emit(const StaticSelectionViewState.fetchInProgress());
    final result = await service.loadById(fieldTypeId);
    emit(
      result.fold(
        (error) =>
            StaticSelectionViewState.fetchFailure(error: error.toString()),
        (staticSelection) => StaticSelectionViewState.fetchSuccess(
          staticSelection: staticSelection,
        ),
      ),
    );
  }

  Future<void> remove(int fieldTypeId) async {
    await service.removeStaticSelection(fieldTypeId);
  }
}
