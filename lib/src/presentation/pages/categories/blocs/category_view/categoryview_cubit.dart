import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:geobase/src/domain/services/services.dart';

part 'categoryview_cubit.freezed.dart';
part 'categoryview_state.dart';

@injectable
class CategoryViewCubit extends Cubit<CategoryViewState> {
  CategoryViewCubit(
    this.categoryService,
  ) : super(const CategoryViewState.fetchInProgress());

  final ICategoryService categoryService;

  Future<void> fetch(int categoryId) async {
    emit(const CategoryViewState.fetchInProgress());
    final result = await categoryService.getCategory(categoryId);
    emit(
      result.fold(
        (error) => CategoryViewState.fetchFailure(error: error.toString()),
        (category) => CategoryViewState.fetchSuccess(category: category),
      ),
    );
  }
}
