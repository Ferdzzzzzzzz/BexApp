import 'package:Bex/core/failures/network_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_comment_form_state.freezed.dart';

@freezed
abstract class CreateCommentFormState with _$CreateCommentFormState {
  const factory CreateCommentFormState({
    @required bool submitting,
    @required Option<Either<NetworkFailure, Unit>> optionSubmitFailureOrUnit,
  }) = _Initial;

  factory CreateCommentFormState.initial() => CreateCommentFormState(
        submitting: false,
        optionSubmitFailureOrUnit: none(),
      );
}
