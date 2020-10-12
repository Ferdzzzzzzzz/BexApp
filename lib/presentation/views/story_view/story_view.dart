import 'package:Bex/core/constants.dart';
import 'package:Bex/domain/story/entities/story_entity.dart';
import 'package:Bex/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:Bex/core/extensions/context_extensions.dart';
import 'package:google_fonts/google_fonts.dart';

class StoryView extends StatelessWidget {
  final StoryEntity story;

  const StoryView(this.story);

  @override
  Widget build(BuildContext context) {
    final boxW = context.maxW * 0.8;

    return Scaffold(
      body: Stack(
        children: [
          _renderBackground(context.maxW, context.maxH),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: context.maxH * 0.1),
                      Container(
                        padding: EdgeInsets.all(boxW * 0.1),
                        width: boxW,
                        height: context.maxH * 0.6,
                        decoration: BoxDecoration(
                          boxShadow: materialBoxShadow,
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Text(
                                  story.title,
                                  style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                SizedBox(height: context.maxH * 0.025),
                                Text(
                                  story.story,
                                  maxLines: 100,
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      ...story.comments
                          .map<Widget>(
                            (comment) => Container(
                              padding: const EdgeInsets.all(5),
                              margin: const EdgeInsets.symmetric(vertical: 10),
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
                      SizedBox(height: context.maxH * 0.1),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            left: context.maxW * 0.05,
            top: context.maxH * 0.025,
            child: const BackButton(
              color: Colors.black,
            ),
          ),
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
          image: AssetImage(Assets.images.bg3.path),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
