import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import './create_story_form_state.dart';

class CreateStoryFormCubit extends Cubit<CreateStoryFormState> {
  CreateStoryFormCubit() : super(CreateStoryFormState.initial());

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

  bool _canSubmit() {
    if (state.optionStoryType.isNone()) return false;
    if (state.story.isEmpty) return false;
    if (state.title.isEmpty) return false;
    return true;
  }
}
