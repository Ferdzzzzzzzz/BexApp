import 'package:Bex/application/map/location_search/cubit.dart';
import 'package:Bex/presentation/views/app_view/components/prediction_tile.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:build_context/build_context.dart';

class LocationSearchResultPicker extends StatelessWidget {
  final void Function(String placeId) onTap;

  const LocationSearchResultPicker(this.onTap);

  @override
  Widget build(BuildContext context) {
    final maxH = context.mediaQuerySize.height;
    final maxW = context.mediaQuerySize.width;

    return Positioned(
      top: maxH * 0.15,
      left: maxW * 0.05,
      child: BlocConsumer<LocationSearchCubit, LocationSearchState>(
        listener: _handleListener,
        builder: (stateContext, state) {
          return Container(
            width: maxW * 0.9,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Card(
                child: Center(
                  child: Column(
                    children: [
                      if (state.searching) _renderSearching(stateContext),
                      ..._getPredictionList(context, state),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _handleListener(BuildContext context, LocationSearchState state) {
    state.locationList.fold(
      () {},
      (eitherLocationListOrFailure) => eitherLocationListOrFailure.fold(
        (f) => FlushbarHelper.createError(
          title: "Network Error",
          message: "Please check your connection and try again.",
        )..show(context),
        (_) {},
      ),
    );
  }

  List<Widget> _getPredictionList(
    BuildContext context,
    LocationSearchState state,
  ) =>
      state.locationList.fold(
        () => [],
        (eitherFailureOrPredictionList) => eitherFailureOrPredictionList.fold(
          (f) => [],
          (predictions) => predictions
              .asList()
              .map((p) => PredictionTile(prediction: p, onTap: onTap))
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
