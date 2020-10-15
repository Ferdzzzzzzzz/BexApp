import 'package:Bex/application/create_comment_form/create_comment_form_cubit.dart';
import 'package:Bex/application/create_comment_form/create_comment_form_state.dart';
import 'package:Bex/application/map/markers/markers_watcher_cubit.dart';
import 'package:Bex/application/map/markers/markers_watcher_state.dart';
import 'package:Bex/core/constants.dart';
import 'package:Bex/domain/story/entities/story_entity.dart';
import 'package:Bex/gen/colors.gen.dart';
import 'package:Bex/sl.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:Bex/core/extensions/context_extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:build_context/build_context.dart';

class CommentView extends HookWidget {
  final StoryEntity story;
  final BuildContext blocContext;

  const CommentView(this.story, this.blocContext);

  @override
  Widget build(BuildContext context) {
    final comment = useState("");
    final textController = useTextEditingController();

    return KeyboardVisibilityProvider(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => sl<CreateCommentFormCubit>()),
          BlocProvider.value(value: BlocProvider.of<MarkersCubit>(blocContext)),
        ],
        child: Builder(
          builder: (context) =>
              BlocConsumer<CreateCommentFormCubit, CreateCommentFormState>(
            listener: (context, state) => _listenState(
              context,
              state,
              comment,
              textController,
            ),
            builder: (context, state) => _renderBuilder(
              context,
              state,
              comment,
              textController,
            ),
          ),
        ),
      ),
    );
  }

  void _listenState(
    BuildContext context,
    CreateCommentFormState state,
    ValueNotifier<String> comment,
    TextEditingController controller,
  ) {
    state.optionSubmitFailureOrUnit.fold(
      () {},
      (eitherFailureOrUnit) => eitherFailureOrUnit.fold(
        (f) => FlushbarHelper.createError(
          title: "Network Error",
          message: "Please check your connection and try again.",
        )..show(context),
        (unit) {
          controller.clear();
          comment.value = "";
        },
      ),
    );
  }

  Widget _renderBuilder(
    BuildContext context,
    CreateCommentFormState state,
    ValueNotifier<String> comment,
    TextEditingController controller,
  ) {
    final boxW = context.maxW * 0.8;
    final maxH = context.mediaQuerySize.height;
    final maxW = context.mediaQuerySize.width;
    final commentCubit = context.bloc<CreateCommentFormCubit>();

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: ColorName.superLightGrey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Text(
          "comments",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w300,
            color: Colors.black,
          ),
        ),
        leading: BackButton(
          onPressed: () {
            if (state.submitting) return;
            context.pop();
          },
          color: Colors.black,
        ),
      ),
      body: BlocBuilder<MarkersCubit, MarkersState>(
        builder: (context, state) {
          final keyboardOut =
              KeyboardVisibilityProvider.isKeyboardVisible(context);
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: context.maxH * 0.01,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: SizedBox(
                    width: context.maxW,
                    child: Column(
                      children: [
                        ...state.stories
                            .asList()
                            .firstWhere((s) => s.id == story.id)
                            .comments
                            .map<Widget>(
                              (comment) => Container(
                                padding: const EdgeInsets.all(5),
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10),
                                width: boxW,
                                decoration: BoxDecoration(
                                  boxShadow: materialBoxShadow,
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                ),
                                child: Text(comment),
                              ),
                            )
                            .toList(),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: context.maxH * 0.005,
              ),
              SizedBox(
                width: context.maxW,
                child: Column(
                  mainAxisAlignment: keyboardOut
                      ? MainAxisAlignment.start
                      : MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: materialBoxShadow,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: EdgeInsets.only(
                        bottom: context.maxH * 0.025,
                      ),
                      child: SizedBox(
                        width: maxW * 0.8,
                        height: maxH * 0.05,
                        child: Center(
                          child: TextField(
                            controller: controller,
                            autocorrect: false,
                            decoration: InputDecoration(
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  if (comment.value.isNotEmpty) {
                                    commentCubit.submitComment(
                                      storyEntity: state.stories
                                          .asList()
                                          .firstWhere((s) => s.id == story.id),
                                      comment: comment.value,
                                    );
                                  }
                                },
                                child: const Icon(Icons.send),
                              ),
                              border: InputBorder.none,
                              isDense: true,
                            ),
                            onChanged: (s) => comment.value = s,
                            textAlignVertical: TextAlignVertical.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: keyboardOut ? context.maxH * 0.45 : 0,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
