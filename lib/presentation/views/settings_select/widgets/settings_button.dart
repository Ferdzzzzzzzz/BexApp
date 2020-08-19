import 'package:bex_app/application/bootstrap/cubit.dart';
import 'package:flutter/material.dart';
import 'package:build_context/build_context.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsButton extends StatelessWidget {
  final String title;
  final bool hasTypeOne;

  const SettingsButton(
    this.title, {
    @required this.hasTypeOne,
  });

  @override
  Widget build(BuildContext context) {
    final bootstrapCubit = context.bloc<BootstrapCubit>();
    final maxW = context.mediaQuerySize.width;
    final boxW = maxW * 0.3;
    final boxH = boxW * 0.4;
    const borderRadius = 14.0;

    return GestureDetector(
      onTap: () async {
        await bootstrapCubit.setAppSetting(hasTypeOne: hasTypeOne);
      },
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 3),
                  blurRadius: 6,
                  color: Colors.black45,
                ),
              ],
              color: Colors.white,
            ),
            width: boxW,
            height: boxH,
            child: Center(
              child: Text(
                title,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w300,
                  fontSize: 27,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(boxW * 0.04, boxH * -0.08),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              width: boxW,
              height: boxH,
            ),
          ),
        ],
      ),
    );
  }
}
