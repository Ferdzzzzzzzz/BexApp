import 'package:flutter/material.dart';
import 'package:google_maps_webservice/places.dart';

class PredictionTile extends StatelessWidget {
  final Prediction prediction;

  const PredictionTile({@required this.prediction});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.location_on),
      title: RichText(
        text: TextSpan(
          children: _buildPredictionText(context),
        ),
      ),
      onTap: () {
        print(prediction);
      },
    );
  }

  List<TextSpan> _buildPredictionText(BuildContext context) {
    final result = <TextSpan>[];
    const textStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.w300);
    const boldTextStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.w500);

    if (prediction.matchedSubstrings.isNotEmpty) {
      final matchedSubString = prediction.matchedSubstrings[0];
      final offset = matchedSubString.offset.round();
      final length = matchedSubString.length.round();

      // There is no matched string at the beginning.
      if (matchedSubString.offset > 0) {
        result.add(
          TextSpan(
            text: prediction.description.substring(0, offset),
            style: textStyle,
          ),
        );
      }

      // Matched strings.
      result.add(
        TextSpan(
          text: prediction.description.substring(offset, offset + length),
          style: boldTextStyle,
        ),
      );

      // Other strings.
      if (matchedSubString.offset + matchedSubString.length <
          prediction.description.length) {
        result.add(
          TextSpan(
            text: prediction.description.substring(offset + length),
            style: textStyle,
          ),
        );
      }
      // If there is no matched strings, but there are predicts. (Not sure if this happens though)
    } else {
      result.add(
        TextSpan(
          text: prediction.description,
          style: textStyle,
        ),
      );
    }

    return result;
  }
}
