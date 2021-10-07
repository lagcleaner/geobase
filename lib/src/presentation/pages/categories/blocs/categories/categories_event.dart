part of 'categories_bloc.dart';

@freezed
class CategoriesEvent with _$CategoriesEvent {
  const factory CategoriesEvent.fetched({
    required String query,
  }) = _Fetched;
}
