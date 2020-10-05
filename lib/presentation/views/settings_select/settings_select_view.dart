import 'package:Bex/gen/assets.gen.dart';
import 'package:Bex/presentation/views/settings_select/widgets/settings_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:build_context/build_context.dart';

class SettingsSelectView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final maxH = context.mediaQuerySize.height;
    final maxW = context.mediaQuerySize.width;

    return Scaffold(
      body: Stack(
        children: [
          _renderBackground(maxW, maxH),
          _renderPage(context, maxW, maxH),
        ],
      ),
    );
  }

  Widget _renderPage(
    BuildContext context,
    double maxW,
    double maxH,
  ) {
    return SizedBox(
      width: maxW,
      child: Column(
        children: [
          SizedBox(height: maxH * 0.22),
          Text(
            'do you have',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w300,
              fontSize: 30,
            ),
          ),
          Text(
            'Type 1 Diabetes?',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w300,
              fontSize: 30,
            ),
          ),
          SizedBox(height: maxH * 0.06),
          _renderButtons(context, maxW),
        ],
      ),
    );
  }

  Widget _renderButtons(BuildContext context, double maxW) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: maxW * 0.1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          SettingsButton('NO', hasTypeOne: false),
          SettingsButton('YES', hasTypeOne: true),
        ],
      ),
    );
  }

  Widget _renderBackground(double maxW, double maxH) {
    return Container(
      width: maxW,
      height: maxH,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.images.background.path),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
