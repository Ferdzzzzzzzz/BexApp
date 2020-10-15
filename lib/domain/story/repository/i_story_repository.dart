import 'package:Bex/core/failures/network_failures.dart';
import 'package:Bex/domain/story/entities/story_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kt_dart/collection.dart';

abstract class IStoryRepository {
  Stream<Either<NetworkFailure, KtList<StoryEntity>>> watchStories();

  Future<Either<NetworkFailure, Unit>> createStory({
    @required String story,
    @required String title,
    @required StoryType type,
    @required LatLng latLng,
  });

  Future<Either<NetworkFailure, Unit>> createComment({
    @required StoryEntity story,
    @required String comment,
  });
}
