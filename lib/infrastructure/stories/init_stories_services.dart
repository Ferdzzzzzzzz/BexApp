import 'package:Bex/application/create_comment_form/create_comment_form_cubit.dart';
import 'package:Bex/application/create_story_form/cubit.dart';
import 'package:Bex/application/map/markers/markers_watcher_cubit.dart';
import 'package:Bex/domain/story/repository/i_story_repository.dart';
import 'package:Bex/domain/story/usecases/submit_story.dart';
import 'package:Bex/infrastructure/stories/story_repository.dart';

import '../../sl.dart';

void initStoriesServices() {
  sl.registerLazySingleton<IStoryRepository>(() => StoryRepository());

  sl.registerFactory(() => MarkersCubit(sl())..initialiseMarkers());

  sl.registerFactory(() => CreateStoryFormCubit(sl()));

  sl.registerFactory(() => CreateCommentFormCubit(sl()));

  sl.registerFactory(() => Story(sl()));
}
