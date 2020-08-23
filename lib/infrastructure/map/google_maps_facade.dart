import 'package:bex_app/core/failures/network_failures.dart';
import 'package:bex_app/domain/map/i_map_facade.dart';
import 'package:dartz/dartz.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kt_dart/collection.dart';

import "package:google_maps_webservice/places.dart";

class GoogleMapsFacade implements IMapFacade {
  @override
  Future<Either<NetworkFailure, KtList<Prediction>>> searchLocations(
    String searchString,
  ) async {
    final places = GoogleMapsPlaces(
      apiKey: "AIzaSyDhKLN-TZqzyeW_5yCtizJ8DcH8_Kceb2g",
    );

    try {
      final response = await places.autocomplete(searchString);

      return right(response.predictions.toImmutableList());
    } catch (_) {
      return left(NetworkFailure());
    }
  }
}
