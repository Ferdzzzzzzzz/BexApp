import 'package:Bex/core/failures/network_failures.dart';
import 'package:Bex/domain/story/entities/story_entity.dart';
import 'package:Bex/domain/story/repository/i_story_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Story {
  final IStoryRepository repository;

  Story(this.repository);

  Future<Either<NetworkFailure, Unit>> submit({
    @required String title,
    @required String story,
    @required StoryType type,
    @required LatLng latLng,
  }) async {
    final eitherFailureOrUnit = await repository.createStory(
      title: title,
      story: story,
      type: type,
      latLng: latLng,
    );

    return eitherFailureOrUnit.fold(
      (f) => left(f),
      (unit) => right(unit),
    );
  }
}
