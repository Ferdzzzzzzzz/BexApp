import 'package:Bex/application/map/location_search/cubit.dart';
import 'package:Bex/core/constants.dart';
import 'package:Bex/core/utils/debouncer.dart';
import 'package:flutter/material.dart';
import 'package:build_context/build_context.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LocationSearchBar extends HookWidget {
  final _debouncer = Debouncer(milliseconds: 500);
  final FocusNode focusNode;
  final TextEditingController textController;

  LocationSearchBar(this.focusNode, this.textController);

  @override
  Widget build(BuildContext context) {
    final maxH = context.mediaQuerySize.height;
    final maxW = context.mediaQuerySize.width;

    return Padding(
      padding: EdgeInsets.only(top: maxH * 0.08),
      child: Align(
        alignment: Alignment.topCenter,
        child: BlocBuilder<LocationSearchCubit, LocationSearchState>(
          builder: (context, state) {
            return Container(
              decoration: BoxDecoration(
                boxShadow: materialBoxShadow,
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                width: maxW * 0.8,
                height: maxH * 0.05,
                child: Center(
                  child: TextField(
                    focusNode: focusNode,
                    onTap: () => focusNode.requestFocus(),
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
