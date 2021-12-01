import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:form_bloc/form_bloc.dart' as form_bloc;

typedef FormBlocBuilderCallback<
        FormBlocState extends form_bloc
            .FormBlocState<SuccessResponse, ErrorResponse>,
        SuccessResponse,
        ErrorResponse>
    = Widget Function(BuildContext context, FormBlocState state);

class FormBlocBuilder<
        FormBloc extends form_bloc.FormBloc<SuccessResponse, ErrorResponse>,
        SuccessResponse,
        ErrorResponse>
    extends BlocBuilder<FormBloc,
        form_bloc.FormBlocState<SuccessResponse, ErrorResponse>> {
  FormBlocBuilder({
    Key? key,
    this.formBloc,
    this.onLoading,
    this.onLoaded,
    this.onLoadFailed,
    this.onSubmitting,
    this.onSuccess,
    this.onFailure,
    this.onSubmissionCancelled,
    this.onSubmissionFailed,
    this.onDeleting,
    this.onDeleteFailed,
    this.onDeleteSuccessful,
    required this.orElse,
  }) : super(
          key: key,
          bloc: formBloc,
          // buildWhen: (previousState, state) =>
          //     previousState.runtimeType != state.runtimeType,
          builder: (context, state) {
            if (state is form_bloc
                    .FormBlocLoading<SuccessResponse, ErrorResponse> &&
                onLoading != null) {
              return onLoading(context, state);
            } else if (state is form_bloc
                    .FormBlocLoaded<SuccessResponse, ErrorResponse> &&
                onLoaded != null) {
              return onLoaded(context, state);
            } else if (state is form_bloc
                    .FormBlocLoadFailed<SuccessResponse, ErrorResponse> &&
                onLoadFailed != null) {
              return onLoadFailed(context, state);
            } else if (state is form_bloc
                    .FormBlocSubmitting<SuccessResponse, ErrorResponse> &&
                onSubmitting != null) {
              return onSubmitting(context, state);
            } else if (state is form_bloc
                    .FormBlocSuccess<SuccessResponse, ErrorResponse> &&
                onSuccess != null) {
              return onSuccess(context, state);
            } else if (state is form_bloc
                    .FormBlocFailure<SuccessResponse, ErrorResponse> &&
                onFailure != null) {
              return onFailure(context, state);
            } else if (state is form_bloc.FormBlocSubmissionCancelled<
                    SuccessResponse, ErrorResponse> &&
                onSubmissionCancelled != null) {
              return onSubmissionCancelled(context, state);
            } else if (state is form_bloc
                    .FormBlocSubmissionFailed<SuccessResponse, ErrorResponse> &&
                onSubmissionFailed != null) {
              return onSubmissionFailed(context, state);
            } else if (state is form_bloc
                    .FormBlocDeleting<SuccessResponse, ErrorResponse> &&
                onDeleting != null) {
              return onDeleting(context, state);
            } else if (state is form_bloc
                    .FormBlocDeleteFailed<SuccessResponse, ErrorResponse> &&
                onDeleteFailed != null) {
              return onDeleteFailed(context, state);
            } else if (state is form_bloc
                    .FormBlocDeleteSuccessful<SuccessResponse, ErrorResponse> &&
                onDeleteSuccessful != null) {
              return onDeleteSuccessful(context, state);
            }
            return orElse(context, state);
          },
        );

  final FormBlocBuilderCallback<
      form_bloc.FormBlocState<SuccessResponse, ErrorResponse>,
      SuccessResponse,
      ErrorResponse> orElse;

  /// {@macro form_bloc.form_state.FormBlocLoading}
  final FormBlocBuilderCallback<
      form_bloc.FormBlocLoading<SuccessResponse, ErrorResponse>,
      SuccessResponse,
      ErrorResponse>? onLoading;

  /// {@macro form_bloc.form_state.FormBlocLoaded}
  final FormBlocBuilderCallback<
      form_bloc.FormBlocLoaded<SuccessResponse, ErrorResponse>,
      SuccessResponse,
      ErrorResponse>? onLoaded;

  /// {@macro form_bloc.form_state.FormBlocLoadFailed}
  final FormBlocBuilderCallback<
      form_bloc.FormBlocLoadFailed<SuccessResponse, ErrorResponse>,
      SuccessResponse,
      ErrorResponse>? onLoadFailed;

  /// {@macro form_bloc.form_state.FormBlocSubmitting}
  final FormBlocBuilderCallback<
      form_bloc.FormBlocSubmitting<SuccessResponse, ErrorResponse>,
      SuccessResponse,
      ErrorResponse>? onSubmitting;

  /// {@macro form_bloc.form_state.FormBlocSuccess}
  final FormBlocBuilderCallback<
      form_bloc.FormBlocSuccess<SuccessResponse, ErrorResponse>,
      SuccessResponse,
      ErrorResponse>? onSuccess;

  /// {@macro form_bloc.form_state.FormBlocFailure}
  final FormBlocBuilderCallback<
      form_bloc.FormBlocFailure<SuccessResponse, ErrorResponse>,
      SuccessResponse,
      ErrorResponse>? onFailure;

  /// {@macro form_bloc.form_state.FormBlocSubmissionCancelled}
  final FormBlocBuilderCallback<
      form_bloc.FormBlocSubmissionCancelled<SuccessResponse, ErrorResponse>,
      SuccessResponse,
      ErrorResponse>? onSubmissionCancelled;

  /// {@macro form_bloc.form_state.FormBlocSubmissionFailed}
  final FormBlocBuilderCallback<
      form_bloc.FormBlocSubmissionFailed<SuccessResponse, ErrorResponse>,
      SuccessResponse,
      ErrorResponse>? onSubmissionFailed;

  /// {@macro form_bloc.form_state.FormBlocSubmissionFailed}
  final FormBlocBuilderCallback<
      form_bloc.FormBlocDeleting<SuccessResponse, ErrorResponse>,
      SuccessResponse,
      ErrorResponse>? onDeleting;

  /// {@macro form_bloc.form_state.FormBlocSubmissionFailed}
  final FormBlocBuilderCallback<
      form_bloc.FormBlocDeleteFailed<SuccessResponse, ErrorResponse>,
      SuccessResponse,
      ErrorResponse>? onDeleteFailed;

  /// {@macro form_bloc.form_state.FormBlocSubmissionFailed}
  final FormBlocBuilderCallback<
      form_bloc.FormBlocDeleteSuccessful<SuccessResponse, ErrorResponse>,
      SuccessResponse,
      ErrorResponse>? onDeleteSuccessful;

  /// If the [formBloc] parameter is omitted, [FormBlocBuilder]
  /// will automatically perform a lookup using
  /// [BlocProvider].of<[FormBloc]> and the current [BuildContext].
  final FormBloc? formBloc;
}
