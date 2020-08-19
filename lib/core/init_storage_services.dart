import 'package:bex_app/domain/bootstrap/i_storage_facade.dart';
import 'package:bex_app/infrastructure/bootstrap/hive_facade.dart';
import 'package:bex_app/sl.dart';

void initStorageServices() {
  sl.registerSingleton<IStorageFacade>(HiveFacade());
}
