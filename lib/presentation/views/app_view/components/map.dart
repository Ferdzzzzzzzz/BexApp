import 'dart:async';
import 'package:bex_app/application/map/location_search/cubit.dart';
import 'package:bex_app/core/hooks/focus_node_value_listener.dart';
import 'package:bex_app/domain/map/i_map_facade.dart';
import 'package:bex_app/presentation/views/app_view/components/location_search.dart';
import 'package:bex_app/presentation/views/app_view/components/location_search_result_picker.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../sl.dart';

const zoom = 15.0;

class Map extends HookWidget {
  final _controller = Completer<GoogleMapController>();

  final _kGooglePlex = const CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: zoom,
  );

  @override
  Widget build(BuildContext context) {
    final textFieldFocus = useState(false);
    final focusNode = useFocusNodeValueListener((hasFocus) {
      textFieldFocus.value = hasFocus;
    });
    final textController = useTextEditingController();

    return BlocProvider(
      create: (_) => sl<LocationSearchCubit>(),
      child: Stack(
        children: [
          GoogleMap(
            onTap: (argument) => _handleTap(
              textFieldFocus,
              focusNode,
              argument,
            ),
            onLongPress: (argument) => _handleLongPress(
              textFieldFocus,
              focusNode,
              argument,
            ),
            onCameraMoveStarted: () => _handleCameraMoveStart(
              textFieldFocus,
              focusNode,
            ),
            myLocationButtonEnabled: false,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (controller) {
              _controller.complete(controller);
            },
          ),
          if (textFieldFocus.value)
            LocationSearchResultPicker((String placeId) {
              _onPredictionTap(
                context,
                textFieldFocus,
                focusNode,
                textController,
                placeId,
              );
            }),
          LocationSearchBar(focusNode, textController),
        ],
      ),
    );
  }

  Future<void> _onPredictionTap(
    BuildContext context,
    ValueNotifier<bool> textFieldFocus,
    FocusNode focusNode,
    TextEditingController textController,
    String placeId,
  ) async {
    textController.clear();
    _unfocusTextField(textFieldFocus, focusNode);
    final mapsService = sl<IMapFacade>();
    final eitherFailureOrPlaceDetails =
        await mapsService.getDetailsByPlaceId(placeId);

    eitherFailureOrPlaceDetails.fold(
      (f) => FlushbarHelper.createError(
        title: "Network Error",
        message: "Please check your connection and try again.",
      )..show(context),
      (placeDetails) {
        final lat = placeDetails.result.geometry.location.lat;
        final lng = placeDetails.result.geometry.location.lng;

        final updatedCameraPos = CameraPosition(
          target: LatLng(lat, lng),
          zoom: zoom,
        );

        _animateCamera(updatedCameraPos);
      },
    );
  }

  Future<void> _animateCamera(CameraPosition updatedCameraPos) async {
    final controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(updatedCameraPos));
  }

  void _handleTap(
    ValueNotifier<bool> textFieldFocus,
    FocusNode focusNode,
    LatLng latLng,
  ) {
    _unfocusTextField(textFieldFocus, focusNode);
  }

  void _handleCameraMoveStart(
    ValueNotifier<bool> textFieldFocus,
    FocusNode focusNode,
  ) {
    _unfocusTextField(textFieldFocus, focusNode);
  }

  void _handleLongPress(
    ValueNotifier<bool> textFieldFocus,
    FocusNode focusNode,
    LatLng latLng,
  ) {
    _unfocusTextField(textFieldFocus, focusNode);
  }

  void _unfocusTextField(
    ValueNotifier<bool> textFieldFocus,
    FocusNode focusNode,
  ) {
    if (textFieldFocus.value) focusNode.unfocus();
  }
}
