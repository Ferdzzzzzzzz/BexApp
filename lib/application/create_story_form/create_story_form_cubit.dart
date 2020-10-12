import 'package:Bex/domain/story/entities/story_entity.dart';
import 'package:Bex/domain/story/usecases/submit_story.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import './create_story_form_state.dart';

class CreateStoryFormCubit extends Cubit<CreateStoryFormState> {
  final Story story;

  CreateStoryFormCubit(this.story) : super(CreateStoryFormState.initial());

  Future<void> tapPositiveBtn() async => emit(state.copyWith(
        optionStoryType: some(StoryType.positive),
        canSubmit: _canSubmit(),
      ));

  Future<void> tapNegativeBtn() async => emit(state.copyWith(
        optionStoryType: some(StoryType.negative),
        canSubmit: _canSubmit(),
      ));

  Future<void> changeStory(String s) async => emit(state.copyWith(
        story: s,
      ));

  Future<void> changeTitle(String s) async => emit(state.copyWith(
        title: s,
      ));

  Future<void> updateSubmit() async => emit(state.copyWith(
        canSubmit: _canSubmit(),
      ));

  Future<void> submitStory(LatLng latLng) async {
    emit(state.copyWith(
      canSubmit: false,
      isSubmitting: true,
    ));

    final eitherFailureOrUnit = await story.submit(
      title: state.title,
      story: state.story,
      type: state.optionStoryType.fold(
        () {
          throw ErrorSummary("Illegal State");
        },
        (a) => a,
      ),
      latLng: latLng,
    );

    eitherFailureOrUnit.fold(
      (f) => emit(state.copyWith(
        isSubmitting: false,
        optionSubmitResult: some(left(f)),
      )),
      (unit) => emit(state.copyWith(
        isSubmitting: false,
        optionSubmitResult: some(right(unit)),
      )),
    );
  }

  bool _canSubmit() {
    if (state.optionStoryType.isNone()) return false;
    if (state.story.isEmpty) return false;
    if (state.title.isEmpty) return false;
    return true;
  }
}
