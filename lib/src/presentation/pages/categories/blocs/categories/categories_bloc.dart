import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/services.dart';
import 'package:rxdart/rxdart.dart';

part 'categories_event.dart';
part 'categories_state.dart';
part 'categories_bloc.freezed.dart';

@injectable
class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc(this.categoryService)
      : super(const CategoriesState.initial()) {
    on<CategoriesEvent>(
      (event, emit) async {
        await event.when(
          fetched: (query) async {
            if (query.isEmpty) {
              emit(const CategoriesState.initial());
              return;
            }
            emit(const CategoriesState.fetchInProgress());
            final response = await categoryService.loadCategoriesWhere(
              FilterCategoriesOptions(nameSubstring: query),
            );
            response.fold(
              (error) => emit(
                CategoriesState.fetchFailure(
                  error: error.message ?? error.toString(),
                ),
              ),
              (categories) => emit(
                categories.isEmpty
                    ? const CategoriesState.fetchSuccessNotFound()
                    : CategoriesState.fetchSuccess(categories: categories),
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

  final ICategoryService categoryService;
}
