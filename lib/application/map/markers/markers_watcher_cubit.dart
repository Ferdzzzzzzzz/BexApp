import 'package:Bex/domain/story/entities/story_entity.dart';
import 'package:Bex/domain/story/repository/i_story_repository.dart';
import 'package:Bex/gen/assets.gen.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kt_dart/collection.dart';
import 'markers_watcher_state.dart';

class MarkersCubit extends Cubit<MarkersState> {
  final IStoryRepository repository;

  MarkersCubit(this.repository) : super(MarkersState.initial());

  Future<void> watch() async {
    repository.watchStories().listen((failureOrStories) {
      failureOrStories.fold(
        (f) => _failureReceived(),
        (stories) => _storiesReceived(stories),
      );
    });
  }

  Future<void> _storiesReceived(KtList<StoryEntity> stories) async {
    emit(state.copyWith(
      stories: stories,
      networkFailure: false,
    ));
  }

  Future<void> _failureReceived() async {
    emit(state.copyWith(networkFailure: true));
  }

  Future<void> clearFailure() async {
    emit(state.copyWith(networkFailure: false));
  }

  Future<void> initialiseMarkers() async {
    final positiveIcon = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(10, 10)),
      Assets.images.yellowMarker.path,
    );

    final negativeIcon = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(10, 10)),
      Assets.images.blueMarker.path,
    );

    emit(state.copyWith(
      positiveIcon: positiveIcon,
      negativeIcon: negativeIcon,
    ));
  }
}
