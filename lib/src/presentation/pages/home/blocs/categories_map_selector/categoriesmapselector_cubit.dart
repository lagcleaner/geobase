import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/interfaces/interfaces.dart';

part 'categoriesmapselector_cubit.freezed.dart';
part 'categoriesmapselector_state.dart';

@injectable
class CategoriesMapSelectorCubit extends Cubit<CategoriesMapSelectorState> {
  CategoriesMapSelectorCubit(
    this.service,
    this.prefsService,
  ) : super(const CategoriesMapSelectorState.state());

  final ICategoryService service;
  final IUserPreferencesReaderService prefsService;

  Future<void> loadCategories() async {
    final either = await service.loadCategoriesWhere();
    final categories = either.fold((l) => <CategoryGetEntity>[], (r) => r);
    emit(state.copyWith(categories: categories));
    final eitherSelected = await prefsService.loadUserPreferences();
    final selected = eitherSelected.fold(
      (l) => null,
      (r) => r.mapMode,
    );
    emit(state.copyWith(selected: selected?.categoryUsed));
  }

  void changeCategory(int? category) {
    if (category == state.selected) return;
    emit(state.copyWith(selected: category));
  }

  void clear() {
    emit(state.copyWith(selected: null));
  }
}
