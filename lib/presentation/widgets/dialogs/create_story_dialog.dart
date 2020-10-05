import 'package:flutter/material.dart';
import 'package:Bex/core/extensions/context_extensions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CreateStoryDialog extends StatelessWidget {
  final LatLng latLng;

  const CreateStoryDialog(this.latLng);

  @override
  Widget build(BuildContext context) {
    final maxH = context.maxH;
    final maxW = context.maxW;

    const dialogText = 'are you sure you want to add a new story?';

    return Center(
      child: Dialog(
        backgroundColor: Colors.transparent,
        child: Stack(
          children: [
            Container(
              width: maxW * 0.8,
              height: maxH * 0.4,
              padding: EdgeInsets.symmetric(horizontal: maxW * 0.1),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    dialogText,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w200,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Transform.translate(
              offset: Offset(maxW * 0.01, -maxH * 0.01),
              child: Container(
                width: maxW * 0.8,
                height: maxH * 0.4,
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
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.close),
                    ),
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, maxH * 0.3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _renderButton('NO', () {
                    print('no');
                  }),
                  _renderButton('YES', () {
                    print('yes');
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _renderButton(String title, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Text(
        title,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w300,
          fontSize: 20,
        ),
      ),
    );
  }
}
