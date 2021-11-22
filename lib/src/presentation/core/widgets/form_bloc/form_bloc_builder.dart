import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class FormBlocBuilder<T extends FormBloc<Dat, Err>,
    S extends FormBlocState<Dat, Err>, Dat, Err> extends StatelessWidget {
  const FormBlocBuilder({
    Key? key,
    this.bloc,
    this.onLoading,
    this.onLoadFailed,
    this.onLoaded,
    this.onSuccess,
    this.onFailure,
    required this.orElse,
  }) : super(key: key);

  final T? bloc;
  final Widget Function(Err? failure)? onLoadFailed;
  final Widget Function()? onLoading;
  final Widget Function()? onLoaded;
  final Widget Function(Dat? data)? onSuccess;
  final Widget Function(Err? failure)? onFailure;
  final Widget Function() orElse;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<T, FormBlocState<Dat, Err>>(
      bloc: bloc,
      buildWhen: (previous, current) =>
          previous.runtimeType != current.runtimeType ||
          previous is FormBlocLoading && current is FormBlocLoading,
      builder: (context, state) {
        return _build(context, state) ?? orElse();
      },
    );
  }

  Widget? _build(BuildContext context, FormBlocState<Dat, Err> state) {
    if (state is FormBlocFailure<Dat, Err>) {
      return onFailure?.call(state.failureResponse);
    }
    if (state is FormBlocLoading) {
      return onLoading?.call();
    }
    if (state is FormBlocLoadFailed<Dat, Err>) {
      return onLoadFailed?.call(state.failureResponse);
    }
    if (state is FormBlocLoaded) {
      return onLoaded?.call();
    }
    if (state is FormBlocSuccess<Dat, Err>) {
      return onSuccess?.call(state.successResponse);
    }
  }
}
