import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geobase/src/domain/entities/category_get_entity.dart';

part 'categories_importer_state.freezed.dart';

enum CategoryImporterStatus {
  initial,
  loading,
  success,
  error,
}

@freezed
class CategoriesImporterState with _$CategoriesImporterState {
  const factory CategoriesImporterState({
    @Default(CategoryImporterStatus.initial) CategoryImporterStatus status,
    @Default([]) List<CategoryGetEntity> categories,
    String? message,
  }) = _CategoriesImporterState;
}
