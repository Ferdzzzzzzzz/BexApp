import 'package:bex_app/core/failures/network_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'location_entity.dart';

abstract class IMapFacade {
  Future<Either<NetworkFailure, KtList<LocationEntity>>> searchLocations(
    String searchString,
  );
}
