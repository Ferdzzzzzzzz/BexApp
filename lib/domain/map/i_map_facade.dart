import 'package:bex_app/core/failures/network_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:kt_dart/collection.dart';

abstract class IMapFacade {
  Future<Either<NetworkFailure, KtList<Prediction>>> searchLocations(
    String searchString,
  );

  Future<Either<NetworkFailure, PlacesDetailsResponse>> getDetailsByPlaceId(
    String placeId,
  );
}
