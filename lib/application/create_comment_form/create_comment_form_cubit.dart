import 'package:Bex/domain/story/entities/story_entity.dart';
import 'package:Bex/domain/story/usecases/submit_story.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import './create_comment_form_state.dart';

class CreateCommentFormCubit extends Cubit<CreateCommentFormState> {
  final Story story;

  CreateCommentFormCubit(this.story) : super(CreateCommentFormState.initial());

  Future<void> submitComment({
    @required StoryEntity storyEntity,
    @required String comment,
  }) async {
    emit(state.copyWith(submitting: true));

    final eitherFailureOrUnit = await story.submitComment(
      story: storyEntity,
      comment: comment,
    );

    eitherFailureOrUnit.fold(
      (f) => emit(state.copyWith(
        submitting: false,
        optionSubmitFailureOrUnit: some(left(f)),
      )),
      (unit) => emit(state.copyWith(
        submitting: false,
        optionSubmitFailureOrUnit: some(right(unit)),
      )),
    );
  }
}
