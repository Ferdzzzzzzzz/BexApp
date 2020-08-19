import 'dart:async';
import 'package:bex_app/application/map/location_search/cubit.dart';
import 'package:bex_app/presentation/views/app_view/components/location_search.dart';
import 'package:bex_app/presentation/views/app_view/components/location_search_result_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../sl.dart';

class MapSample extends HookWidget {
  final _controller = Completer<GoogleMapController>();

  final _kGooglePlex = const CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<LocationSearchCubit>(),
      child: Stack(
        children: [
          GoogleMap(
            myLocationButtonEnabled: false,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (controller) {
              _controller.complete(controller);
            },
          ),
          LocationSearchResultPicker(),
          LocationSearchBar(),
        ],
      ),
    );
  }
}
