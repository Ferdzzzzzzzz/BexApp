import 'package:bex_app/application/map/location_search/cubit.dart';
import 'package:bex_app/core/utils/debouncer.dart';
import 'package:flutter/material.dart';
import 'package:build_context/build_context.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LocationSearchBar extends HookWidget {
  final _debouncer = Debouncer(milliseconds: 500);

  @override
  Widget build(BuildContext context) {
    final maxH = context.mediaQuerySize.height;
    final maxW = context.mediaQuerySize.width;
    final textController = useTextEditingController();

    return Padding(
      padding: EdgeInsets.only(top: maxH * 0.08),
      child: Align(
        alignment: Alignment.topCenter,
        child: BlocBuilder<LocationSearchCubit, LocationSearchState>(
          builder: (context, state) {
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 2,
              child: Container(
                width: maxW * 0.8,
                height: maxH * 0.05,
                child: Center(
                  child: TextField(
                    autocorrect: false,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      isDense: true,
                    ),
                    controller: textController,
                    onChanged: (s) => _handleTextChange(context, s),
                    textAlignVertical: TextAlignVertical.center,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _handleTextChange(
    BuildContext context,
    String locationSearchString,
  ) {
    _debouncer.run(() {
      final locationSearchCubit = context.bloc<LocationSearchCubit>();
      locationSearchCubit.searchLocations(locationSearchString);
    });
  }
}
