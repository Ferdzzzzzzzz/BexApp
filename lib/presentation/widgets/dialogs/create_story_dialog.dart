import 'package:Bex/presentation/views/create_story_view/create_story_view.dart';
import 'package:flutter/material.dart';
import 'package:Bex/core/extensions/context_extensions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:build_context/build_context.dart';

class CreateStoryDialog extends StatelessWidget {
  final LatLng latLng;

  const CreateStoryDialog(this.latLng);

  @override
  Widget build(BuildContext context) {
    final maxH = context.maxH;
    final maxW = context.maxW;

    final containerWidth = maxW * 0.8;
    final containerHeight = maxH * 0.25;

    const dialogText = 'are you sure you want to add a new story?';

    return Center(
      child: Dialog(
        backgroundColor: Colors.transparent,
        child: Stack(
          children: [
            Container(
              width: containerWidth,
              height: containerHeight,
              padding: EdgeInsets.symmetric(horizontal: maxW * 0.1),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: maxH * 0.06,
                  ),
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
                width: containerWidth,
                height: containerHeight,
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
              offset: Offset(0, maxH * 0.18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _renderButton('NO', () {
                    context.pop();
                  }),
                  _renderButton('YES', () {
                    context.pop();
                    context.push<void>(
                      MaterialPageRoute(
                        builder: (context) => CreateStoryView(latLng),
                      ),
                    );
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
