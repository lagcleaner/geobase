import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  const factory Failure.connection({String? message}) = ConnectionFailure;
  const factory Failure.permissionDenied({String? message}) =
      PermissionDeniedFailure;
  const factory Failure.unhandled({String? message}) = UnhandledFailure;
}
