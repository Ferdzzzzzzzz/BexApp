import 'package:Bex/application/create_story_form/cubit.dart';
import 'package:Bex/core/constants.dart';
import 'package:Bex/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:build_context/build_context.dart';
import 'package:Bex/core/extensions/context_extensions.dart';

class CreateStoryView extends StatelessWidget {
  final LatLng latLng;

  const CreateStoryView(this.latLng);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateStoryFormCubit(),
      child: Scaffold(
        backgroundColor: ColorName.createStoryBgColor,
        body: Builder(
          builder: (blocContext) => Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _renderTitleText(blocContext),
              _renderStoryTypeBtns(blocContext),
              _renderTitleInput(blocContext),
              _renderStoryInput(blocContext),
              _renderAddCancelBtns(blocContext),
            ],
          ),
        ),
      ),
    );
  }

  Widget _renderStoryTypeBtns(BuildContext context) {
    return BlocBuilder<CreateStoryFormCubit, CreateStoryFormState>(
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

  Widget _renderAddCancelBtns(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () => context.pop(),
            child: Text(
              'CANCEL',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          BlocBuilder<CreateStoryFormCubit, CreateStoryFormState>(
            builder: (context, state) {
              return GestureDetector(
                onTap: () {
                  if (state.canSubmit) {
                    print('submit story');
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
