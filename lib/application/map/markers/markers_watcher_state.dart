import 'package:Bex/domain/story/entities/story_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kt_dart/kt.dart';

part 'markers_watcher_state.freezed.dart';

@freezed
abstract class MarkersState with _$MarkersState {
  const factory MarkersState({
    @required KtList<StoryEntity> stories,
    @required bool networkFailure,
    @required BitmapDescriptor positiveIcon,
    @required BitmapDescriptor negativeIcon,
  }) = _MarkersState;

  factory MarkersState.initial() => const MarkersState(
        stories: KtList.empty(),
        networkFailure: false,
        positiveIcon: BitmapDescriptor.defaultMarker,
        negativeIcon: BitmapDescriptor.defaultMarker,
      );
}
