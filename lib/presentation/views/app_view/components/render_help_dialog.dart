import 'package:Bex/application/bootstrap/cubit.dart';
import 'package:Bex/application/map/bottom_nav/cubit.dart';
import 'package:Bex/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:build_context/build_context.dart';

void renderHelpDialog(BuildContext context) {
  final maxH = context.mediaQuerySize.height;
  final maxW = context.mediaQuerySize.width;
  final bootstrapCubit = context.bloc<BootstrapCubit>();
  final bottomNavCubit = context.bloc<BottomnavCubit>();
  final dialogText = (bootstrapCubit.state as HasSettings).hasTypeOne
      ? 'click on a location to read the story or choose a location to attach your own story to it'
      : 'click on a location to read the story attached to it';

  showDialog<void>(
    context: context,
    barrierDismissible: true,
    builder: (dialogContext) => WillPopScope(
      onWillPop: () async {
        await bottomNavCubit.tapOnMap();
        return true;
      },
      child: Center(
        child: Dialog(
          backgroundColor: Colors.transparent,
          child: Stack(
            children: [
              Container(
                width: maxW * 0.8,
                height: maxH * 0.6,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: maxW * 0.5,
                        child: Text(
                          dialogText,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w200,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: maxH * 0.05,
                      ),
                      Container(
                        width: maxW * 0.65,
                        child: Row(
                          children: [
                            Assets.icons.locationOrange.image(
                              height: maxH * 0.1,
                            ),
                            Text(
                              'POSITIVE EXPERIENCE',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: maxW * 0.65,
                        child: Row(
                          children: [
                            Assets.icons.locationBlue.image(
                              height: maxH * 0.1,
                            ),
                            Text(
                              'NEGATIVE EXPERIENCE',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(maxW * 0.01, -maxH * 0.01),
                child: Container(
                  width: maxW * 0.8,
                  height: maxH * 0.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: maxW * 0.05,
                      top: maxW * 0.05,
                    ),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(dialogContext);
                          bottomNavCubit.tapOnMap();
                        },
                        child: const Icon(Icons.close),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
