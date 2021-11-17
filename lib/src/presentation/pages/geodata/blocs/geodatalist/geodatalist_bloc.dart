import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/services.dart';
import 'package:rxdart/rxdart.dart';

part 'geodatalist_event.dart';
part 'geodatalist_state.dart';
part 'geodatalist_bloc.freezed.dart';

@injectable
class GeodataListBloc extends Bloc<GeodataListEvent, GeodataListState> {
  GeodataListBloc(this.geodataService)
      : super(const GeodataListState.initial()) {
    on<GeodataListEvent>(
      (event, emit) async {
        await event.when(
          fetched: (categoryId) async {
            if (categoryId == null) {
              emit(const GeodataListState.initial());
              return;
            }
            emit(const GeodataListState.fetchInProgress());
            final response = await geodataService.loadGeodataWhere(
              FilterDataOptionsEntity(categoryId: categoryId),
            );
            response.fold(
              (error) => emit(
                GeodataListState.fetchFailure(
                  error: error.message ?? error.toString(),
                ),
              ),
              (geodataList) => emit(
                geodataList.isEmpty
                    ? const GeodataListState.fetchSuccessNotFound()
                    : GeodataListState.fetchSuccess(geodataList: geodataList),
              ),
            );
          },
        );
      },
      transformer: (events, mapper) {
        return events.debounceTime(const Duration(seconds: 1)).flatMap(mapper);
      },
    );
  }

  final IGeodataService geodataService;
}
