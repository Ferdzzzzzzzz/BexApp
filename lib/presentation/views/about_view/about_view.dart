import 'package:bex_app/core/constants.dart';
import 'package:bex_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:bex_app/core/extensions/context_extensions.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.images.aboutBackground.path),
          fit: BoxFit.cover,
        ),
      ),
      child: _renderPage(context),
    );
  }

  Widget _renderPage(BuildContext context) {
    return Center(
      child: Container(
        height: context.maxH * 0.8,
        child: Column(
          children: [
            SizedBox(height: context.maxH * 0.05),
            _renderTitle(),
            SizedBox(height: context.maxH * 0.05),
            _renderText(context),
          ],
        ),
      ),
    );
  }

  Widget _renderTitle() {
    return Text(
      'about bex',
      style: GoogleFonts.poppins(
        fontSize: 40,
        fontWeight: FontWeight.w300,
      ),
    );
  }

  Widget _renderText(BuildContext context) {
    return Container(
      width: context.maxW * 0.8,
      height: context.maxH * 0.6,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: materialBoxShadow,
            ),
          ),
          Transform.translate(
            offset: Offset(
              context.maxW * 0.02,
              context.maxH * -0.01,
            ),
            child: Container(
              width: context.maxW * 0.8,
              height: context.maxH * 0.6,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Center(
            child: Container(
              width: context.maxW * 0.6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _renderParagraph(
                    context,
                    "bex’s main aim is to challenge the stigma and stereotypes surrounding Type 1 Diabetes! By doing this we also hope to positively impact the body-image of Type 1 Diabetic females in South Africa.",
                  ),
                  _renderParagraph(
                    context,
                    "This app, along with other bex initiatives that you can find out about on our website (*once the website is made I’ll add the link in here*), encourages conversations between people with Type 1 Diabetes and people without.",
                  ),
                  _renderParagraph(
                    context,
                    "We hope to spread awareness and teach people about the experiences of Type 1 Diabetic females and create a space where everyone can feel comfortable in their own skin!",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _renderParagraph(
    BuildContext context,
    String text,
  ) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.maxH * 0.01),
      child: Text(
        text,
        style: GoogleFonts.poppins(fontSize: 13),
      ),
    );
  }
}
