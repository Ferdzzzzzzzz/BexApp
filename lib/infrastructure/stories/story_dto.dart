import 'package:Bex/domain/story/entities/story_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'story_dto.freezed.dart';
part 'story_dto.g.dart';

@freezed
abstract class StoryDto implements _$StoryDto {
  const factory StoryDto({
    @JsonKey(ignore: true) String id,
    @required String title,
    @required String story,
    @required String date,
    @required double lat,
    @required double long,
    @required bool isPositive,
    @required int likes,
    @required List<String> comments,
  }) = _StoryDto;

  const StoryDto._();

  factory StoryDto.fromDomain(StoryEntity entity) => StoryDto(
        story: entity.story,
        title: entity.title,
        date: entity.date,
        lat: entity.latLng.latitude,
        long: entity.latLng.longitude,
        isPositive: entity.storyType == StoryType.positive,
        likes: entity.likes,
        comments: entity.comments,
      );

  StoryEntity toDomain() {
    return StoryEntity(
      id: id,
      title: title,
      story: story,
      date: date,
      latLng: LatLng(lat, long),
      storyType: isPositive ? StoryType.positive : StoryType.negative,
      likes: likes,
      comments: comments,
    );
  }

  factory StoryDto.fromJson(Map<String, dynamic> json) =>
      _$StoryDtoFromJson(json);

  factory StoryDto.fromFirestore(DocumentSnapshot doc) {
    return StoryDto.fromJson(doc.data()).copyWith(id: doc.id);
  }
}
