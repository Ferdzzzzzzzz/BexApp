import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'story_entity.freezed.dart';

enum StoryType { positive, negative }

@freezed
abstract class StoryEntity with _$StoryEntity {
  const factory StoryEntity({
    @required String id,
    @required String story,
    @required String title,
    @required String date,
    @required LatLng latLng,
    @required StoryType storyType,
    @required int likes,
    @required List<String> comments,
  }) = _StoryEntity;
}
