import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geobase/injection.dart';

import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/interfaces/interfaces.dart';

part 'static_selection_list_cubit.freezed.dart';
part 'static_selection_list_state.dart';

@injectable
class StaticSelectionListCubit extends Cubit<StaticSelectionListState> {
  StaticSelectionListCubit(
    this.service,
  ) : super(const StaticSelectionListState.initial());

  final IFieldTypeStaticSelectionService service;

  Future<void> fetch() async {
    emit(const StaticSelectionListState.fetchInProgress());
    final response = await service.loadAll();
    response.fold(
      (error) => emit(
        StaticSelectionListState.fetchFailure(
          error: error.message ?? error.toString(),
        ),
      ),
      (staticSelectionTypes) => emit(
        staticSelectionTypes.isEmpty
            ? const StaticSelectionListState.fetchSuccessNotFound()
            : StaticSelectionListState.fetchSuccess(
                staticSelectionTypes: staticSelectionTypes,
              ),
      ),
    );
  }
}
