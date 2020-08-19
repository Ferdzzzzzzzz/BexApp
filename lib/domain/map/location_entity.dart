import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'location_entity.freezed.dart';

@freezed
abstract class LocationEntity with _$LocationEntity {
  const factory LocationEntity({
    @required String name,
    @required LatLng coords,
  }) = _LocationEntity;
}
