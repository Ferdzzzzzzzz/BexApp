import 'package:Bex/domain/story/entities/story_entity.dart';
import 'package:Bex/core/failures/network_failures.dart';
import 'package:Bex/domain/story/repository/i_story_repository.dart';
import 'package:Bex/infrastructure/stories/story_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

class StoryRepository implements IStoryRepository {
  @override
  Future<Either<NetworkFailure, Unit>> createStory({
    @required String title,
    @required String story,
    @required StoryType type,
    @required LatLng latLng,
  }) async {
    final newStory = StoryDto.fromDomain(StoryEntity(
      id: 'tempId',
      story: story,
      title: title,
      date: DateTime.now().toString(),
      latLng: latLng,
      storyType: type,
      likes: 0,
      comments: [],
    ));

    try {
      await FirebaseFirestore.instance
          .collection('stories')
          .add(newStory.toJson());

      return right(unit);
    } catch (e) {
      return left(NetworkFailure());
    }
  }

  @override
  Future<Either<NetworkFailure, Unit>> createComment({
    @required StoryEntity story,
    @required String comment,
  }) async {
    final updatedStory = story.copyWith(
      comments: [...story.comments, comment],
    );

    try {
      await FirebaseFirestore.instance
          .collection('stories')
          .doc(story.id)
          .update(StoryDto.fromDomain(updatedStory).toJson());

      return right(unit);
    } catch (e) {
      return left(NetworkFailure());
    }
  }

  @override
  Stream<Either<NetworkFailure, KtList<StoryEntity>>> watchStories() async* {
    yield* FirebaseFirestore.instance
        .collection('stories')
        .snapshots()
        .map(
          (snapshot) => right<NetworkFailure, KtList<StoryEntity>>(snapshot.docs
              .map((doc) => StoryDto.fromFirestore(doc).toDomain())
              .toImmutableList()),
        )
        .onErrorReturnWith((dynamic _) =>
            left<NetworkFailure, KtList<StoryEntity>>(NetworkFailure()));
  }
}
