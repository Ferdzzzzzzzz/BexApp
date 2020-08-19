import 'package:bex_app/application/map/location_search/cubit.dart';
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
                  children: state.locationList
                      .asList()
                      .map((e) => Text(e.name))
                      .toList(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
