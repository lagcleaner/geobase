part of 'categorylist_bloc.dart';

@freezed
class CategoryListEvent with _$CategoryListEvent {
  const factory CategoryListEvent.fetched({
    required String query,
  }) = _Fetched;
}
