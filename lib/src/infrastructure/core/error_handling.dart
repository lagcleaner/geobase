import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:geobase/src/domain/entities/entities.dart';

Future<Either<Failure, T>> tryCallAsync<T>(
  Future<T> Function() func, {
  Failure Function(dynamic)? onError,
}) async {
  try {
    return Right(await func());
  } catch (e) {
    if (onError != null) {
      return Left(onError(e));
    }
    return Left(Failure.unhandled(message: e.toString()));
  }
}

Either<Failure, T> tryCallSync<T>(
  T Function() func, {
  Failure Function(dynamic)? onError,
}) {
  try {
    return Right(func());
  } catch (e) {
    if (onError != null) {
      return Left(onError(e));
    }
    return Left(Failure.unhandled(message: e.toString()));
  }
}

Left<Failure, T> catchMethod<T>(Object e) {
  var error = Failure.unhandled(
    message: e.toString(),
  );
  switch (e.runtimeType) {
    case PlatformException:
      final except = e as PlatformException;
      switch (except.code) {
        case 'PERMISSION_DENIED':
          error = Failure.permissionDenied(message: except.message);
          break;
        case 'SERVICE_STATUS_ERROR':
        default:
          error = Failure.unhandled(message: except.message ?? except.code);
      }
      break;
  }
  log('error: ${error.toString()}');
  return Left(error);
}
