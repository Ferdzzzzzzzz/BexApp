import 'package:bex_app/core/failures/network_failures.dart';
import 'package:bex_app/domain/map/i_map_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kt_dart/collection.dart';

import 'package:bex_app/domain/map/location_entity.dart';
import "package:google_maps_webservice/places.dart";

class GoogleMapsFacade implements IMapFacade {
  @override
  Future<Either<NetworkFailure, KtList<LocationEntity>>> searchLocations(
    String searchString,
  ) async {
    final places = GoogleMapsPlaces(
      apiKey: "AIzaSyDhKLN-TZqzyeW_5yCtizJ8DcH8_Kceb2g",
    );

    try {
      final response = await places.searchByText(searchString);

      final mappedToEntityList = response.results.map((l) {
        final lat = l.geometry.location.lat;
        final long = l.geometry.location.lng;
        final addr = l.formattedAddress;
        return LocationEntity(name: addr, coords: LatLng(lat, long));
      });

      return right(mappedToEntityList.toImmutableList());
    } catch (_) {
      return left(NetworkFailure());
    }
  }
}
