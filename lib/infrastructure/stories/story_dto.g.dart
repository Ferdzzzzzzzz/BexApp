// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoryDto _$_$_StoryDtoFromJson(Map<String, dynamic> json) {
  return _$_StoryDto(
    title: json['title'] as String,
    story: json['story'] as String,
    date: json['date'] as String,
    lat: (json['lat'] as num)?.toDouble(),
    long: (json['long'] as num)?.toDouble(),
    isPositive: json['isPositive'] as bool,
    likes: json['likes'] as int,
    comments: (json['comments'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_StoryDtoToJson(_$_StoryDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'story': instance.story,
      'date': instance.date,
      'lat': instance.lat,
      'long': instance.long,
      'isPositive': instance.isPositive,
      'likes': instance.likes,
      'comments': instance.comments,
    };
