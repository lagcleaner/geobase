import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/categories/interfaces/i_category.dart';

part 'relations_cubit.freezed.dart';
part 'relations_state.dart';

@injectable
class RelationsCubit extends Cubit<RelationsState> {
  RelationsCubit(
    this.service,
  ) : super(const RelationsState.state(name: ''));

  final ICategoryService service;

  Future<void> loadCategories() async {
    final either = await service.loadCategoriesWhere();
    final categories = either.fold((l) => <CategoryGetEntity>[], (r) => r);
    emit(state.copyWith(categories: categories));
  }

  void changeName(String name) {
    if (name == state.name) return;
    emit(state.copyWith(name: name));
  }

  void changeCategory(int? category) {
    if (category == state.selected) return;
    emit(state.copyWith(selected: category));
  }

  void clear() {
    emit(state.copyWith(name: '', selected: null));
  }
}
