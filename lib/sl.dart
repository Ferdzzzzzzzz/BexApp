import 'package:Bex/application/bootstrap/init_bootstrap.dart';
import 'package:get_it/get_it.dart';

import 'core/init_storage_services.dart';
import 'domain/map/init_map_service.dart';
import 'infrastructure/stories/init_stories_services.dart';

final sl = GetIt.instance;

Future<void> setupSl() async {
  initMapService();
  initStorageServices();
  initStoriesServices();
  await initBootstrap();
}
