import 'package:Bex/application/create_story_form/cubit.dart';
import 'package:Bex/core/constants.dart';
import 'package:Bex/domain/story/entities/story_entity.dart';
import 'package:Bex/gen/colors.gen.dart';
import 'package:Bex/sl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:build_context/build_context.dart';
import 'package:Bex/core/extensions/context_extensions.dart';

class CreateStoryView extends StatelessWidget {
  final LatLng latLng;

  const CreateStoryView(this.latLng);

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityProvider(
      child: BlocProvider(
        create: (context) => sl<CreateStoryFormCubit>(),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: ColorName.createStoryBgColor,
          body: Builder(builder: (blocContext) {
            final keyboardOut =
                KeyboardVisibilityProvider.isKeyboardVisible(blocContext);
            return Center(
              child: SingleChildScrollView(
                child: SizedBox(
                  height: keyboardOut ? context.maxH * 1.2 : context.maxH,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _renderTitleText(blocContext),
                      _renderStoryTypeBtns(blocContext),
                      _renderTitleInput(blocContext),
                      _renderStoryInput(blocContext),
                      _renderAddCancelBtns(blocContext),
                      if (keyboardOut) SizedBox(height: context.maxH * 0.4),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget _renderStoryTypeBtns(BuildContext context) {
    return BlocConsumer<CreateStoryFormCubit, CreateStoryFormState>(
      listener: (context, state) {
        state.optionSubmitResult.fold(
          () {},
          (eitherFailureOrUnit) => eitherFailureOrUnit.fold(
            (f) {},
            (_) => context.pop(),
          ),
        );
      },
      builder: (context, state) {
        final formCubit = context.bloc<CreateStoryFormCubit>();
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _renderButton1(
              context,
              'POSITIVE',
              () async {
                await formCubit.tapPositiveBtn();
                await formCubit.updateSubmit();
              },
              state.optionStoryType.fold(
                () => Colors.white,
                (storyType) => storyType == StoryType.positive
                    ? ColorName.positiveOrange
                    : Colors.white,
              ),
            ),
            _renderButton1(
              context,
              'NEGATIVE',
              () async {
                await formCubit.tapNegativeBtn();
                await formCubit.updateSubmit();
              },
              state.optionStoryType.fold(
                () => Colors.white,
                (storyType) => storyType == StoryType.negative
                    ? ColorName.negativeBlue
                    : Colors.white,
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _renderButton1(
    BuildContext context,
    String title,
    VoidCallback cb,
    Color color,
  ) {
    final btnWidth = context.maxW * 0.3;
    final btnHeight = context.maxH * 0.06;
    return GestureDetector(
      onTap: cb,
      child: Container(
        width: btnWidth,
        height: btnHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: Stack(
          children: [
            Center(
              child: Text(
                title,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(btnWidth * 0.04, btnHeight * -0.08),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: btnWidth,
                height: btnHeight,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _renderAddCancelBtns(BuildContext context) {
    final formCubit = context.bloc<CreateStoryFormCubit>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RawMaterialButton(
          onPressed: () => context.pop(),
          child: Text(
            'CANCEL',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        BlocBuilder<CreateStoryFormCubit, CreateStoryFormState>(
          builder: (context, state) {
            return RawMaterialButton(
              onPressed: () {
                if (state.canSubmit) {
                  formCubit.submitStory(latLng);
                }
              },
              child: Text(
                'ADD',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  color: state.canSubmit ? Colors.black : Colors.grey,
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _renderTitleText(BuildContext context) {
    return Text(
      "this experience was:",
      style: GoogleFonts.roboto(
        fontSize: 20,
      ),
    );
  }

  Widget _renderTitleInput(BuildContext context) {
    final formCubit = context.bloc<CreateStoryFormCubit>();

    return Container(
      margin: EdgeInsets.symmetric(horizontal: context.maxW * 0.05),
      padding: EdgeInsets.all(context.maxW * 0.02),
      decoration: BoxDecoration(
        boxShadow: materialBoxShadow,
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        autocorrect: false,
        decoration: const InputDecoration(
          border: InputBorder.none,
          isDense: true,
          hintText: "add story title here...",
        ),
        onChanged: (s) async {
          await formCubit.changeTitle(s);
          await formCubit.updateSubmit();
        },
        textAlignVertical: TextAlignVertical.center,
      ),
    );
  }

  Widget _renderStoryInput(BuildContext context) {
    final formCubit = context.bloc<CreateStoryFormCubit>();

    return Container(
      margin: EdgeInsets.symmetric(horizontal: context.maxW * 0.05),
      padding: EdgeInsets.all(context.maxW * 0.02),
      height: 200,
      decoration: BoxDecoration(
        boxShadow: materialBoxShadow,
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        maxLines: 50,
        autocorrect: false,
        decoration: const InputDecoration(
          border: InputBorder.none,
          isDense: true,
          hintText: "add story here...",
        ),
        onChanged: (s) async {
          await formCubit.changeStory(s);
          await formCubit.updateSubmit();
        },
        textAlignVertical: TextAlignVertical.center,
      ),
    );
  }
}
