// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'categories_importer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoriesImporterState {
  CategoryImporterStatus get status => throw _privateConstructorUsedError;
  List<CategoryGetEntity> get categories => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoriesImporterStateCopyWith<CategoriesImporterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesImporterStateCopyWith<$Res> {
  factory $CategoriesImporterStateCopyWith(CategoriesImporterState value,
          $Res Function(CategoriesImporterState) then) =
      _$CategoriesImporterStateCopyWithImpl<$Res, CategoriesImporterState>;
  @useResult
  $Res call(
      {CategoryImporterStatus status,
      List<CategoryGetEntity> categories,
      String? message});
}

/// @nodoc
class _$CategoriesImporterStateCopyWithImpl<$Res,
        $Val extends CategoriesImporterState>
    implements $CategoriesImporterStateCopyWith<$Res> {
  _$CategoriesImporterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? categories = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CategoryImporterStatus,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryGetEntity>,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoriesImporterStateCopyWith<$Res>
    implements $CategoriesImporterStateCopyWith<$Res> {
  factory _$$_CategoriesImporterStateCopyWith(_$_CategoriesImporterState value,
          $Res Function(_$_CategoriesImporterState) then) =
      __$$_CategoriesImporterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CategoryImporterStatus status,
      List<CategoryGetEntity> categories,
      String? message});
}

/// @nodoc
class __$$_CategoriesImporterStateCopyWithImpl<$Res>
    extends _$CategoriesImporterStateCopyWithImpl<$Res,
        _$_CategoriesImporterState>
    implements _$$_CategoriesImporterStateCopyWith<$Res> {
  __$$_CategoriesImporterStateCopyWithImpl(_$_CategoriesImporterState _value,
      $Res Function(_$_CategoriesImporterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? categories = null,
    Object? message = freezed,
  }) {
    return _then(_$_CategoriesImporterState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CategoryImporterStatus,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryGetEntity>,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CategoriesImporterState implements _CategoriesImporterState {
  const _$_CategoriesImporterState(
      {this.status = CategoryImporterStatus.initial,
      final List<CategoryGetEntity> categories = const [],
      this.message})
      : _categories = categories;

  @override
  @JsonKey()
  final CategoryImporterStatus status;
  final List<CategoryGetEntity> _categories;
  @override
  @JsonKey()
  List<CategoryGetEntity> get categories {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  final String? message;

  @override
  String toString() {
    return 'CategoriesImporterState(status: $status, categories: $categories, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoriesImporterState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_categories), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoriesImporterStateCopyWith<_$_CategoriesImporterState>
      get copyWith =>
          __$$_CategoriesImporterStateCopyWithImpl<_$_CategoriesImporterState>(
              this, _$identity);
}

abstract class _CategoriesImporterState implements CategoriesImporterState {
  const factory _CategoriesImporterState(
      {final CategoryImporterStatus status,
      final List<CategoryGetEntity> categories,
      final String? message}) = _$_CategoriesImporterState;

  @override
  CategoryImporterStatus get status;
  @override
  List<CategoryGetEntity> get categories;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_CategoriesImporterStateCopyWith<_$_CategoriesImporterState>
      get copyWith => throw _privateConstructorUsedError;
}
