import 'package:Bex/core/failures/network_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:kt_dart/kt.dart';

part 'location_search_state.freezed.dart';

@freezed
abstract class LocationSearchState with _$LocationSearchState {
  const factory LocationSearchState({
    @required Option<Either<NetworkFailure, KtList<Prediction>>> locationList,
    @required bool searching,
  }) = _LocationSearchState;

  factory LocationSearchState.initial() => LocationSearchState(
        locationList: none(),
        searching: false,
      );
}
