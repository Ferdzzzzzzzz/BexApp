import 'package:bex_app/application/map/location_search/cubit.dart';
import 'package:bex_app/presentation/views/app_view/components/prediction_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:build_context/build_context.dart';

class LocationSearchResultPicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final maxH = context.mediaQuerySize.height;
    final maxW = context.mediaQuerySize.width;

    return Positioned(
      top: maxH * 0.15,
      left: maxW * 0.05,
      child: BlocBuilder<LocationSearchCubit, LocationSearchState>(
        builder: (context, state) {
          return Container(
            width: maxW * 0.9,
            child: Card(
              child: Center(
                child: Column(
                  children: [
                    if (state.searching) _renderSearching(context),
                    ..._getPredictionList(state),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  List<Widget> _getPredictionList(LocationSearchState state) =>
      state.locationList.fold(
        () => [],
        (eitherFailureOrPredictionList) => eitherFailureOrPredictionList.fold(
          (f) => [],
          (predictions) => predictions
              .asList()
              .map((p) => PredictionTile(prediction: p))
              .toList(),
        ),
      );

  Widget _renderSearching(BuildContext context) => ListTile(
        leading: Container(
          height: context.mediaQuerySize.height * 0.02,
          width: context.mediaQuerySize.height * 0.02,
          child: const CircularProgressIndicator(
            strokeWidth: 2,
          ),
        ),
        title: const Text(
          'Searching...',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
        ),
      );
}
