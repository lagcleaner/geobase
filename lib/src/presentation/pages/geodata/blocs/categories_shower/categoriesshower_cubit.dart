import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/categories/interfaces/i_category.dart';

part 'categoriesshower_state.dart';
part 'categoriesshower_cubit.freezed.dart';

@injectable
class CategoriesShowerCubit extends Cubit<CategoriesShowerState> {
  CategoriesShowerCubit(
    this.service,
  ) : super(const CategoriesShowerState.state());

  final ICategoryService service;

  Future<void> loadCategories() async {
    final either = await service.loadCategoriesWhere();
    final categories = either.fold((l) => <CategoryGetEntity>[], (r) => r);
    emit(state.copyWith(categories: categories));
  }

  void changeCategory(int? category) {
    if (category == state.selected) return;
    emit(state.copyWith(selected: category));
  }

  void clear() {
    emit(state.copyWith(selected: null));
  }
}
