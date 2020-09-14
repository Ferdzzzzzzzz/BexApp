import 'package:Bex/core/failures/network_failures.dart';
import 'package:Bex/core/utils/config.dart' as config;
import 'package:Bex/domain/map/i_map_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import "package:google_maps_webservice/places.dart";

class GoogleMapsFacade implements IMapFacade {
  @override
  Future<Either<NetworkFailure, KtList<Prediction>>> searchLocations(
    String searchString,
  ) async {
    final places = GoogleMapsPlaces(
      apiKey: config.mapsKey,
    );

    try {
      final response = await places.autocomplete(searchString);

      return right(response.predictions.toImmutableList());
    } catch (_) {
      return left(NetworkFailure());
    }
  }

  @override
  Future<Either<NetworkFailure, PlacesDetailsResponse>> getDetailsByPlaceId(
    String placeId,
  ) async {
    final places = GoogleMapsPlaces(
      apiKey: config.mapsKey,
    );

    try {
      final response = await places.getDetailsByPlaceId(placeId);

      return right(response);
    } catch (_) {
      return left(NetworkFailure());
    }
  }
}
