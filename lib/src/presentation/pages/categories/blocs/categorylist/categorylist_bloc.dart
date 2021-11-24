import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/services.dart';
import 'package:rxdart/rxdart.dart';

part 'categorylist_event.dart';
part 'categorylist_state.dart';
part 'categorylist_bloc.freezed.dart';

@injectable
class CategoryListBloc extends Bloc<CategoryListEvent, CategoryListState> {
  CategoryListBloc(this.categoryService)
      : super(const CategoryListState.initial()) {
    on<CategoryListEvent>(
      (event, emit) async {
        await event.when(
          fetched: (query) async {
            if (query.isEmpty) {
              emit(const CategoryListState.initial());
              return;
            }
            emit(const CategoryListState.fetchInProgress());
            final response = await categoryService.loadCategoriesWhere(
              FilterCategoriesOptionsEntity(nameSubstring: query),
            );
            response.fold(
              (error) => emit(
                CategoryListState.fetchFailure(
                  error: error.message ?? error.toString(),
                ),
              ),
              (categories) => emit(
                categories.isEmpty
                    ? const CategoryListState.fetchSuccessNotFound()
                    : CategoryListState.fetchSuccess(categories: categories),
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
