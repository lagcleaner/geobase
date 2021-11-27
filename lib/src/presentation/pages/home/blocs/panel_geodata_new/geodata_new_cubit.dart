import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/interfaces/interfaces.dart';

part 'geodata_new_cubit.freezed.dart';
part 'geodata_new_state.dart';

@injectable
class GeodataNewCubit extends Cubit<GeodataNewState> {
  GeodataNewCubit(
    this.service,
  ) : super(const GeodataNewState.loading());

  final ICategoryService service;

  Future<void> loadCategories() async {
    final either = await service.loadCategoriesWhere();

    either.fold(
      (failure) => emit(GeodataNewState.failure(failure.message)),
      (categories) => emit(GeodataNewState.loadedCategories(categories)),
    );
  }

  Future<void> selectCategory(
    List<CategoryGetEntity> categories,
    int categoryId,
  ) async {
    emit(GeodataNewState.loadedCategories(categories, selected: categoryId));
  }
}
