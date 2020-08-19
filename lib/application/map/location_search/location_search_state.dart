import 'package:bex_app/core/failures/network_failures.dart';
import 'package:bex_app/domain/map/location_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'location_search_state.freezed.dart';

@freezed
abstract class LocationSearchState with _$LocationSearchState {
  const factory LocationSearchState.searching({
    @required KtList<LocationEntity> locationList,
  }) = SearchingLocation;

  const factory LocationSearchState.notSearching({
    @required KtList<LocationEntity> locationList,
  }) = NotSearchingLocation;

  const factory LocationSearchState.error({
    @required NetworkFailure failure,
    @required KtList<LocationEntity> locationList,
  }) = LocationSearchError;

  factory LocationSearchState.initial() => NotSearchingLocation(
        locationList: KtList<LocationEntity>.from([]),
      );
}
