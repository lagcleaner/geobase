import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  const factory Failure.connection() = _ConnectionFailure;
  const factory Failure.permissionDenied({String? message}) =
      _PermissionDeniedFailure;
  const factory Failure.unhandled({String? message}) = _UnhandledFailure;
}
