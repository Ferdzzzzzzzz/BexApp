import 'package:Bex/core/failures/network_failures.dart';
import 'package:Bex/domain/story/entities/story_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'create_story_form_state.freezed.dart';

@freezed
abstract class CreateStoryFormState with _$CreateStoryFormState {
  const factory CreateStoryFormState({
    @required Option<StoryType> optionStoryType,
    @required String title,
    @required String story,
    @required bool canSubmit,
    @required Option<Either<NetworkFailure, Unit>> optionSubmitResult,
    @required bool isSubmitting,
  }) = _CreateStoryFormState;

  factory CreateStoryFormState.initial() => CreateStoryFormState(
        optionStoryType: none(),
        title: "",
        story: "",
        canSubmit: false,
        isSubmitting: false,
        optionSubmitResult: none(),
      );
}
